import Foundation

enum HTTPError: LocalizedError {
    case invalidURL
    case requestFailed(description: String)
    case invalidResponse
    case decodingFailed(description: String)
    case noData

    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .requestFailed(let description):
            return "Request Failed: \(description)"
        case .invalidResponse:
            return "Invalid Response"
        case .decodingFailed(let description):
            return "Decoding error: \(description)"
        case .noData:
            return "No data received"
        }
    }
}

final class HTTPUtility {

    static let shared = HTTPUtility()
    private init() {}

    func performDataTask<T: Decodable>(url: URL, resultType: T.Type, completion: @escaping (Result<T, Error>) -> Void) {

        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error = error {
                completion(.failure(HTTPError.requestFailed(description: error.localizedDescription)))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                completion(.failure(HTTPError.invalidResponse))
                return
            }

            guard let data = data else {
                completion(.failure(HTTPError.noData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(T.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } catch {
                completion(.failure(HTTPError.decodingFailed(description: error.localizedDescription)))
            }
        }.resume()
    }
} 