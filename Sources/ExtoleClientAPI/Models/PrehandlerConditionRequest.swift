//
// PrehandlerConditionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PrehandlerConditionRequest: Codable {

    public enum ModelType: String, Codable { 
        case eventNameMatch = "EVENT_NAME_MATCH"
        case httpHeaderMatch = "HTTP_HEADER_MATCH"
        case javascriptV1 = "JAVASCRIPT_V1"
    }
    public var type: ModelType

    public init(type: ModelType) {
        self.type = type
    }


}
