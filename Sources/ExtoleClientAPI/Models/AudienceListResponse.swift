//
// AudienceListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AudienceListResponse: Codable {

    public enum ModelType: String, Codable { 
        case _static = "STATIC"
        case _dynamic = "DYNAMIC"
        case uploaded = "UPLOADED"
    }
    public enum State: String, Codable { 
        case draft = "DRAFT"
        case building = "BUILDING"
        case ready = "READY"
        case failed = "FAILED"
        case expired = "EXPIRED"
    }
    public var type: ModelType?
    public var _id: String?
    public var name: String?
    public var tags: [String]?
    public var state: State?
    public var _description: String?
    public var eventColumns: [String]?
    public var eventData: [String:Entry?]?
    public var memberCount: Int64?
    public var lastUpdate: Date?
    public var errorCode: String?

    public init(type: ModelType? = nil, _id: String? = nil, name: String? = nil, tags: [String]? = nil, state: State? = nil, _description: String? = nil, eventColumns: [String]? = nil, eventData: [String:Entry?]? = nil, memberCount: Int64? = nil, lastUpdate: Date? = nil, errorCode: String? = nil) {
        self.type = type
        self._id = _id
        self.name = name
        self.tags = tags
        self.state = state
        self._description = _description
        self.eventColumns = eventColumns
        self.eventData = eventData
        self.memberCount = memberCount
        self.lastUpdate = lastUpdate
        self.errorCode = errorCode
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _id = "id"
        case name
        case tags
        case state
        case _description = "description"
        case eventColumns = "event_columns"
        case eventData = "event_data"
        case memberCount = "member_count"
        case lastUpdate = "last_update"
        case errorCode = "error_code"
    }

}
