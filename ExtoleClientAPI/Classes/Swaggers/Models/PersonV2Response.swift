//
// PersonV2Response.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Extole PersonResponse */

public struct PersonV2Response: Codable {

    public enum CookieConsentType: String, Codable { 
        case extole = "EXTOLE"
        case client = "CLIENT"
        case unset = "UNSET"
    }
    public enum ProcessingConsentType: String, Codable { 
        case extole = "EXTOLE"
        case client = "CLIENT"
        case unset = "UNSET"
    }
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
    public var cookieConsent: String?
    public var cookieConsentType: CookieConsentType?
    public var processingConsent: String?
    public var processingConsentType: ProcessingConsentType?
    public var parameters: [String:String]?
    public var blocked: Bool?
    public var selfRewardingBlocked: Bool?
    public var friendRewardingBlocked: Bool?
    public var requestContexts: [RequestContextResponse]?
    public var locale: PersonLocaleV2Response?
    public var profileBlocks: ProfileBlockResponse?

    public init(_id: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, pictureUrl: String? = nil, partnerUserId: String? = nil, cookieConsent: String? = nil, cookieConsentType: CookieConsentType? = nil, processingConsent: String? = nil, processingConsentType: ProcessingConsentType? = nil, parameters: [String:String]? = nil, blocked: Bool? = nil, selfRewardingBlocked: Bool? = nil, friendRewardingBlocked: Bool? = nil, requestContexts: [RequestContextResponse]? = nil, locale: PersonLocaleV2Response? = nil, profileBlocks: ProfileBlockResponse? = nil) {
        self._id = _id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.pictureUrl = pictureUrl
        self.partnerUserId = partnerUserId
        self.cookieConsent = cookieConsent
        self.cookieConsentType = cookieConsentType
        self.processingConsent = processingConsent
        self.processingConsentType = processingConsentType
        self.parameters = parameters
        self.blocked = blocked
        self.selfRewardingBlocked = selfRewardingBlocked
        self.friendRewardingBlocked = friendRewardingBlocked
        self.requestContexts = requestContexts
        self.locale = locale
        self.profileBlocks = profileBlocks
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case pictureUrl = "picture_url"
        case partnerUserId = "partner_user_id"
        case cookieConsent = "cookie_consent"
        case cookieConsentType = "cookie_consent_type"
        case processingConsent = "processing_consent"
        case processingConsentType = "processing_consent_type"
        case parameters
        case blocked
        case selfRewardingBlocked = "self_rewarding_blocked"
        case friendRewardingBlocked = "friend_rewarding_blocked"
        case requestContexts = "request_contexts"
        case locale
        case profileBlocks = "profile_blocks"
    }

}
