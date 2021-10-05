//
// PrehandlerResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PrehandlerResponse: Codable {

    public var _id: String?
    public var name: String?
    public var _description: String?
    public var enabled: Bool?
    public var order: Int?
    public var createdDate: Date?
    public var updatedDate: Date?
    public var conditions: [AnyOfPrehandlerResponseConditionsItems]?
    public var actions: [AnyOfPrehandlerResponseActionsItems]?

    public init(_id: String? = nil, name: String? = nil, _description: String? = nil, enabled: Bool? = nil, order: Int? = nil, createdDate: Date? = nil, updatedDate: Date? = nil, conditions: [AnyOfPrehandlerResponseConditionsItems]? = nil, actions: [AnyOfPrehandlerResponseActionsItems]? = nil) {
        self._id = _id
        self.name = name
        self._description = _description
        self.enabled = enabled
        self.order = order
        self.createdDate = createdDate
        self.updatedDate = updatedDate
        self.conditions = conditions
        self.actions = actions
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case enabled
        case order
        case createdDate = "created_date"
        case updatedDate = "updated_date"
        case conditions
        case actions
    }

}
