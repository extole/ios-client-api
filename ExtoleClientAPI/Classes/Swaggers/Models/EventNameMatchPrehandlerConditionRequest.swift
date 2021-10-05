//
// EventNameMatchPrehandlerConditionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Condition that checks the event name. */

public struct EventNameMatchPrehandlerConditionRequest: Codable {

    public enum ModelType: String, Codable { 
        case eventNameMatch = "EVENT_NAME_MATCH"
        case httpHeaderMatch = "HTTP_HEADER_MATCH"
        case javascriptV1 = "JAVASCRIPT_V1"
    }
    public var type: ModelType
    /** Condition evaluates to true if the event name is present in this set. Event names are not case sensitive. */
    public var eventNames: [String]

    public init(type: ModelType, eventNames: [String]) {
        self.type = type
        self.eventNames = eventNames
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case eventNames = "event_names"
    }

}
