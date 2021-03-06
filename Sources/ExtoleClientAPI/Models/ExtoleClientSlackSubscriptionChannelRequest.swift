//
// ExtoleClientSlackSubscriptionChannelRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ExtoleClientSlackSubscriptionChannelRequest: Codable {

    public enum ModelType: String, Codable { 
        case slack = "SLACK"
        case email = "EMAIL"
        case extoleClientSlack = "EXTOLE_CLIENT_SLACK"
    }
    public var type: ModelType?

    public init(type: ModelType? = nil) {
        self.type = type
    }


}
