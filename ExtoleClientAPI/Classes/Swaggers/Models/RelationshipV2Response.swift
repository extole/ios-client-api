//
// RelationshipV2Response.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RelationshipV2Response: Codable {

    public var shareableId: String?
    public var reason: String?
    public var container: String?
    public var updatedAt: Date?
    public var person: PersonV2Response?

    public init(shareableId: String? = nil, reason: String? = nil, container: String? = nil, updatedAt: Date? = nil, person: PersonV2Response? = nil) {
        self.shareableId = shareableId
        self.reason = reason
        self.container = container
        self.updatedAt = updatedAt
        self.person = person
    }

    public enum CodingKeys: String, CodingKey { 
        case shareableId = "shareable_id"
        case reason
        case container
        case updatedAt = "updated_at"
        case person
    }

}