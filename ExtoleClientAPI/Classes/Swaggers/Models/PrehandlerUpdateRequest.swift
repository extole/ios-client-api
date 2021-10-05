//
// PrehandlerUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PrehandlerUpdateRequest: Codable {

    /** Prehandler name must be unique. */
    public var name: String?
    public var _description: String?
    public var enabled: Bool?
    public var order: Int?
    public var conditions: [AnyOfPrehandlerUpdateRequestConditionsItems]?
    public var actions: [AnyOfPrehandlerUpdateRequestActionsItems]?

    public init(name: String? = nil, _description: String? = nil, enabled: Bool? = nil, order: Int? = nil, conditions: [AnyOfPrehandlerUpdateRequestConditionsItems]? = nil, actions: [AnyOfPrehandlerUpdateRequestActionsItems]? = nil) {
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
