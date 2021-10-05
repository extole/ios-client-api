//
// PrehandlerCreateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PrehandlerCreateRequest: Codable {

    /** Prehandler name must be unique. */
    public var name: String
    public var _description: String?
    public var enabled: Bool?
    public var order: Int?
    public var conditions: [AnyOfPrehandlerCreateRequestConditionsItems]?
    public var actions: [AnyOfPrehandlerCreateRequestActionsItems]?

    public init(name: String, _description: String? = nil, enabled: Bool? = nil, order: Int? = nil, conditions: [AnyOfPrehandlerCreateRequestConditionsItems]? = nil, actions: [AnyOfPrehandlerCreateRequestActionsItems]? = nil) {
        self.name = name
        self._description = _description
        self.enabled = enabled
        self.order = order
        self.conditions = conditions
        self.actions = actions
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _description = "description"
        case enabled
        case order
        case conditions
        case actions
    }

}
