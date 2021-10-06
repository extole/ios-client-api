//
// PersonResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Extole PersonResponse */

public struct PersonResponse: Codable {

    public var _id: String?
    public var email: String?
    /** The first name of the friend. */
    public var firstName: String?
    /** The last name of the friend. */
    public var lastName: String?
    /** A URL that has a picture of the person. */
    public var pictureUrl: String?
    /** Your unique identifier for this person. */
    public var partnerUserId: String?
    public var locale: PersonLocaleResponse?
    public var version: String?
    public var blocked: Bool?
    public var requestContexts: [RequestContextResponse]?

    public init(_id: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, pictureUrl: String? = nil, partnerUserId: String? = nil, locale: PersonLocaleResponse? = nil, version: String? = nil, blocked: Bool? = nil, requestContexts: [RequestContextResponse]? = nil) {
        self._id = _id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.pictureUrl = pictureUrl
        self.partnerUserId = partnerUserId
        self.locale = locale
        self.version = version
        self.blocked = blocked
        self.requestContexts = requestContexts
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case pictureUrl = "picture_url"
        case partnerUserId = "partner_user_id"
        case locale
        case version
        case blocked
        case requestContexts = "request_contexts"
    }

}