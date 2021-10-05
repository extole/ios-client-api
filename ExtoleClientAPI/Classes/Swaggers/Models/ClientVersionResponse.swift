//
// ClientVersionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ClientVersionResponse: Codable {

    public var clientId: String?
    public var version: Int?
    public var changesPending: Bool?

    public init(clientId: String? = nil, version: Int? = nil, changesPending: Bool? = nil) {
        self.clientId = clientId
        self.version = version
        self.changesPending = changesPending
    }

    public enum CodingKeys: String, CodingKey { 
        case clientId = "client_id"
        case version
        case changesPending = "changes_pending"
    }

}
