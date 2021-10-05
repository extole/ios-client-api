//
// WebhookUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WebhookUpdateRequest: Codable {

    public var name: String?
    public var url: String?
    public var clientKeyId: String?
    public var tags: [String]?
    public var request: String?
    public var enabled: Bool?
    public var _description: String?
    public var defaultMethod: String?

    public init(name: String? = nil, url: String? = nil, clientKeyId: String? = nil, tags: [String]? = nil, request: String? = nil, enabled: Bool? = nil, _description: String? = nil, defaultMethod: String? = nil) {
        self.name = name
        self.url = url
        self.clientKeyId = clientKeyId
        self.tags = tags
        self.request = request
        self.enabled = enabled
        self._description = _description
        self.defaultMethod = defaultMethod
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case url
        case clientKeyId = "client_key_id"
        case tags
        case request
        case enabled
        case _description = "description"
        case defaultMethod = "default_method"
    }

}
