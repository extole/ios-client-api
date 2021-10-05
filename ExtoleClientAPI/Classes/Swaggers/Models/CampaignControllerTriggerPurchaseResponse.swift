//
// CampaignControllerTriggerPurchaseResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignControllerTriggerPurchaseResponse: Codable {

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
    public enum Operator: String, Codable { 
        case lessThan = "LESS_THAN"
        case greaterThan = "GREATER_THAN"
    }
    public var triggerId: String?
    public var triggerType: TriggerType?
    public var triggerPhase: TriggerPhase?
    public var triggerName: String?
    public var componentReferences: [CampaignComponentReferenceResponse]?
    public var periodSinceLastPurchase: Int64?
    public var _operator: Operator?

    public init(triggerId: String? = nil, triggerType: TriggerType? = nil, triggerPhase: TriggerPhase? = nil, triggerName: String? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil, periodSinceLastPurchase: Int64? = nil, _operator: Operator? = nil) {
        self.triggerId = triggerId
        self.triggerType = triggerType
        self.triggerPhase = triggerPhase
        self.triggerName = triggerName
        self.componentReferences = componentReferences
        self.periodSinceLastPurchase = periodSinceLastPurchase
        self._operator = _operator
    }

    public enum CodingKeys: String, CodingKey { 
        case triggerId = "trigger_id"
        case triggerType = "trigger_type"
        case triggerPhase = "trigger_phase"
        case triggerName = "trigger_name"
        case componentReferences = "component_references"
        case periodSinceLastPurchase = "period_since_last_purchase"
        case _operator = "operator"
    }

}
