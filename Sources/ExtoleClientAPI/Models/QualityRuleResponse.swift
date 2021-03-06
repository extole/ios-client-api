//
// QualityRuleResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct QualityRuleResponse: Codable {

    public enum RuleType: String, Codable { 
        case referralCap = "REFERRAL_CAP"
        case blacklistRefererHeader = "BLACKLIST_REFERER_HEADER"
        case similarFriendAdvocateEmail = "SIMILAR_FRIEND_ADVOCATE_EMAIL"
        case selfReferral = "SELF_REFERRAL"
        case badCountry = "BAD_COUNTRY"
        case validEmail = "VALID_EMAIL"
        case existingCustomer = "EXISTING_CUSTOMER"
        case botFilter = "BOT_FILTER"
        case blacklistDomain = "BLACKLIST_DOMAIN"
        case eventSpeed = "EVENT_SPEED"
        case blocked = "BLOCKED"
        case recentCustomer = "RECENT_CUSTOMER"
        case preview = "PREVIEW"
        case spamMessage = "SPAM_MESSAGE"
        case sameIp = "SAME_IP"
        case recipientLimit = "RECIPIENT_LIMIT"
        case globalBlock = "GLOBAL_BLOCK"
        case shareCountLimit = "SHARE_COUNT_LIMIT"
        case personData = "PERSON_DATA"
        case ipFilter = "IP_FILTER"
        case friendsOfAdvocateConversionLimit = "FRIENDS_OF_ADVOCATE_CONVERSION_LIMIT"
        case profileDisplaced = "PROFILE_DISPLACED"
        case friendsOfAdvocateClickLimit = "FRIENDS_OF_ADVOCATE_CLICK_LIMIT"
        case friendsOfAdvocateRegistrationLimit = "FRIENDS_OF_ADVOCATE_REGISTRATION_LIMIT"
        case referralAge = "REFERRAL_AGE"
        case generic = "GENERIC"
    }
    public enum ActionTypes: String, Codable { 
        case anyClick = "ANY_CLICK"
        case anyShare = "ANY_SHARE"
        case anyShareReward = "ANY_SHARE_REWARD"
        case anyRegister = "ANY_REGISTER"
        case anyPurchase = "ANY_PURCHASE"
        case anyPromotion = "ANY_PROMOTION"
        case genericAction1 = "GENERIC_ACTION_1"
        case genericAction2 = "GENERIC_ACTION_2"
        case genericAction3 = "GENERIC_ACTION_3"
        case genericAction4 = "GENERIC_ACTION_4"
        case genericAction5 = "GENERIC_ACTION_5"
        case genericAction6 = "GENERIC_ACTION_6"
        case genericAction7 = "GENERIC_ACTION_7"
        case genericAction8 = "GENERIC_ACTION_8"
        case genericAction9 = "GENERIC_ACTION_9"
        case genericAction10 = "GENERIC_ACTION_10"
        case genericAction11 = "GENERIC_ACTION_11"
        case genericAction12 = "GENERIC_ACTION_12"
        case genericAction13 = "GENERIC_ACTION_13"
        case genericAction14 = "GENERIC_ACTION_14"
        case genericAction15 = "GENERIC_ACTION_15"
        case genericAction16 = "GENERIC_ACTION_16"
        case genericAction17 = "GENERIC_ACTION_17"
        case genericAction18 = "GENERIC_ACTION_18"
        case genericAction19 = "GENERIC_ACTION_19"
        case genericAction20 = "GENERIC_ACTION_20"
        case genericAction21 = "GENERIC_ACTION_21"
        case genericAction22 = "GENERIC_ACTION_22"
        case genericAction23 = "GENERIC_ACTION_23"
        case genericAction24 = "GENERIC_ACTION_24"
        case genericAction25 = "GENERIC_ACTION_25"
        case genericAction26 = "GENERIC_ACTION_26"
        case genericAction27 = "GENERIC_ACTION_27"
        case genericAction28 = "GENERIC_ACTION_28"
        case genericAction29 = "GENERIC_ACTION_29"
        case genericAction30 = "GENERIC_ACTION_30"
        case genericAction31 = "GENERIC_ACTION_31"
        case genericAction32 = "GENERIC_ACTION_32"
        case genericAction33 = "GENERIC_ACTION_33"
        case genericAction34 = "GENERIC_ACTION_34"
        case genericAction35 = "GENERIC_ACTION_35"
        case genericAction36 = "GENERIC_ACTION_36"
        case genericAction37 = "GENERIC_ACTION_37"
        case genericAction38 = "GENERIC_ACTION_38"
        case genericAction39 = "GENERIC_ACTION_39"
        case genericAction40 = "GENERIC_ACTION_40"
        case genericAction41 = "GENERIC_ACTION_41"
        case genericAction42 = "GENERIC_ACTION_42"
        case genericAction43 = "GENERIC_ACTION_43"
        case genericAction44 = "GENERIC_ACTION_44"
        case genericAction45 = "GENERIC_ACTION_45"
        case genericAction46 = "GENERIC_ACTION_46"
        case genericAction47 = "GENERIC_ACTION_47"
        case genericAction48 = "GENERIC_ACTION_48"
        case genericAction49 = "GENERIC_ACTION_49"
        case genericAction50 = "GENERIC_ACTION_50"
        case themeGenericAction1 = "THEME_GENERIC_ACTION_1"
        case themeGenericAction2 = "THEME_GENERIC_ACTION_2"
        case themeGenericAction3 = "THEME_GENERIC_ACTION_3"
        case themeGenericAction4 = "THEME_GENERIC_ACTION_4"
        case themeGenericAction5 = "THEME_GENERIC_ACTION_5"
        case themeGenericAction6 = "THEME_GENERIC_ACTION_6"
        case themeGenericAction7 = "THEME_GENERIC_ACTION_7"
        case themeGenericAction8 = "THEME_GENERIC_ACTION_8"
        case themeGenericAction9 = "THEME_GENERIC_ACTION_9"
        case themeGenericAction10 = "THEME_GENERIC_ACTION_10"
        case themeGenericAction11 = "THEME_GENERIC_ACTION_11"
        case themeGenericAction12 = "THEME_GENERIC_ACTION_12"
        case themeGenericAction13 = "THEME_GENERIC_ACTION_13"
        case themeGenericAction14 = "THEME_GENERIC_ACTION_14"
        case themeGenericAction15 = "THEME_GENERIC_ACTION_15"
        case themeGenericAction16 = "THEME_GENERIC_ACTION_16"
        case themeGenericAction17 = "THEME_GENERIC_ACTION_17"
        case themeGenericAction18 = "THEME_GENERIC_ACTION_18"
        case themeGenericAction19 = "THEME_GENERIC_ACTION_19"
        case themeGenericAction20 = "THEME_GENERIC_ACTION_20"
        case themeGenericAction21 = "THEME_GENERIC_ACTION_21"
        case themeGenericAction22 = "THEME_GENERIC_ACTION_22"
        case themeGenericAction23 = "THEME_GENERIC_ACTION_23"
        case themeGenericAction24 = "THEME_GENERIC_ACTION_24"
        case themeGenericAction25 = "THEME_GENERIC_ACTION_25"
        case themeGenericAction26 = "THEME_GENERIC_ACTION_26"
        case themeGenericAction27 = "THEME_GENERIC_ACTION_27"
        case themeGenericAction28 = "THEME_GENERIC_ACTION_28"
        case themeGenericAction29 = "THEME_GENERIC_ACTION_29"
        case themeGenericAction30 = "THEME_GENERIC_ACTION_30"
    }
    public var _id: String?
    public var enabled: Bool?
    public var ruleType: RuleType?
    public var actionTypes: [ActionTypes]?
    public var properties: [String:[String]]?

    public init(_id: String? = nil, enabled: Bool? = nil, ruleType: RuleType? = nil, actionTypes: [ActionTypes]? = nil, properties: [String:[String]]? = nil) {
        self._id = _id
        self.enabled = enabled
        self.ruleType = ruleType
        self.actionTypes = actionTypes
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case enabled
        case ruleType = "rule_type"
        case actionTypes = "action_types"
        case properties
    }

}
