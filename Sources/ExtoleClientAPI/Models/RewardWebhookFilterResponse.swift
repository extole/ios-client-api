//
// RewardWebhookFilterResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RewardWebhookFilterResponse: Codable {

    public enum ModelType: String, Codable { 
        case state = "STATE"
        case supplier = "SUPPLIER"
    }
    public var _id: String?
    public var type: ModelType?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(_id: String? = nil, type: ModelType? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self._id = _id
        self.type = type
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case type
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}
