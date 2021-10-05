//
// PersonV2Request.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Extole PersonRequest */

public struct PersonV2Request: Codable {

    public var email: String?
    /** The first name of the friend. */
    public var firstName: String?
    /** The last name of the friend. */
    public var lastName: String?
    /** A URL that has a picture of the person. */
    public var pictureUrl: String?
    /** Your unique identifier for this person. */
    public var partnerUserId: String?
    public var blocked: Bool?
    public var selfRewardingBlocked: Bool?
    public var friendRewardingBlocked: Bool?
    public var profileBlock: ProfileBlockRequest?

    public init(email: String? = nil, firstName: String? = nil, lastName: String? = nil, pictureUrl: String? = nil, partnerUserId: String? = nil, blocked: Bool? = nil, selfRewardingBlocked: Bool? = nil, friendRewardingBlocked: Bool? = nil, profileBlock: ProfileBlockRequest? = nil) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.pictureUrl = pictureUrl
        self.partnerUserId = partnerUserId
        self.blocked = blocked
        self.selfRewardingBlocked = selfRewardingBlocked
        self.friendRewardingBlocked = friendRewardingBlocked
        self.profileBlock = profileBlock
    }

    public enum CodingKeys: String, CodingKey { 
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case pictureUrl = "picture_url"
        case partnerUserId = "partner_user_id"
        case blocked
        case selfRewardingBlocked = "self_rewarding_blocked"
        case friendRewardingBlocked = "friend_rewarding_blocked"
        case profileBlock = "profile_block"
    }

}
