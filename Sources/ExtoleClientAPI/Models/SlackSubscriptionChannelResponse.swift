//
// SlackSubscriptionChannelResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SlackSubscriptionChannelResponse: Codable {

    public enum ModelType: String, Codable { 
        case slack = "SLACK"
        case email = "EMAIL"
        case extoleClientSlack = "EXTOLE_CLIENT_SLACK"
    }
    public var _id: String?
    public var type: ModelType?
    public var webhookUrl: String?

    public init(_id: String? = nil, type: ModelType? = nil, webhookUrl: String? = nil) {
        self._id = _id
        self.type = type
        self.webhookUrl = webhookUrl
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case type
        case webhookUrl = "webhook_url"
    }

}
