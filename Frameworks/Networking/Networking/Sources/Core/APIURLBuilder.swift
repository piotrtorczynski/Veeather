/// Scheme for the service
public enum Scheme: String {
    case http = "http"
    case https = "https"
}

/// Interface for the API services
public protocol APIURLBuilder {
    
    /// Connection scheme, default `http`
    var scheme: Scheme { get }
    
    /// Base url as string
    var host: String { get }

    /// Root to the Rest API
    var root: String { get }

    /// Api version
    var version: String { get }
}

extension APIURLBuilder {
    
    /// Default scheme `https`
    var scheme: Scheme { return .http }
}
