//
// BuiltCampaignControllerTriggerLegacyQualityResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BuiltCampaignControllerTriggerLegacyQualityResponse: Codable {

    public enum TriggerType: String, Codable { 
        case share = "SHARE"
        case purchase = "PURCHASE"
        case event = "EVENT"
        case score = "SCORE"
        case zoneState = "ZONE_STATE"
        case apiVersion = "API_VERSION"
        case referredByEvent = "REFERRED_BY_EVENT"
        case legacyQuality = "LEGACY_QUALITY"
        case expression = "EXPRESSION"
        case access = "ACCESS"
        case dataIntelligenceEvent = "DATA_INTELLIGENCE_EVENT"
        case hasPriorStep = "HAS_PRIOR_STEP"
        case maxmind = "MAXMIND"
        case rewardEvent = "REWARD_EVENT"
        case hasPriorReward = "HAS_PRIOR_REWARD"
    }
    public enum TriggerPhase: String, Codable { 
        case matching = "MATCHING"
        case qualifying = "QUALIFYING"
        case quality = "QUALITY"
    }
    public enum ActionType: String, Codable { 
        case anyClick = "ANY_CLICK"
        case anyShare = "ANY_SHARE"
        case anyRegister = "ANY_REGISTER"
        case anyPurchase = "ANY_PURCHASE"
        case anyPromotion = "ANY_PROMOTION"
        case anyShareReward = "ANY_SHARE_REWARD"
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
    public var triggerId: String?
    public var triggerType: TriggerType?
    public var triggerPhase: TriggerPhase?
    public var triggerName: String?
    public var componentReferences: [CampaignComponentReferenceResponse]?
    public var actionType: ActionType?

    public init(triggerId: String? = nil, triggerType: TriggerType? = nil, triggerPhase: TriggerPhase? = nil, triggerName: String? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil, actionType: ActionType? = nil) {
        self.triggerId = triggerId
        self.triggerType = triggerType
        self.triggerPhase = triggerPhase
        self.triggerName = triggerName
        self.componentReferences = componentReferences
        self.actionType = actionType
    }

    public enum CodingKeys: String, CodingKey { 
        case triggerId = "trigger_id"
        case triggerType = "trigger_type"
        case triggerPhase = "trigger_phase"
        case triggerName = "trigger_name"
        case componentReferences = "component_references"
        case actionType = "action_type"
    }

}
