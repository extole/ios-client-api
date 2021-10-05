//
// CampaignControllerTriggerRewardEventResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignControllerTriggerRewardEventResponse: Codable {

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
    public enum RewardStates: String, Codable { 
        case earned = "EARNED"
        case fulfilled = "FULFILLED"
        case canceled = "CANCELED"
        case revoked = "REVOKED"
        case redeemed = "REDEEMED"
    }
    public var triggerId: String?
    public var triggerType: TriggerType?
    public var triggerPhase: TriggerPhase?
    public var triggerName: String?
    public var componentReferences: [CampaignComponentReferenceResponse]?
    public var rewardStates: [RewardStates]?
    public var eventNames: [String]?
    public var slots: [String]?
    public var tags: [String]?

    public init(triggerId: String? = nil, triggerType: TriggerType? = nil, triggerPhase: TriggerPhase? = nil, triggerName: String? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil, rewardStates: [RewardStates]? = nil, eventNames: [String]? = nil, slots: [String]? = nil, tags: [String]? = nil) {
        self.triggerId = triggerId
        self.triggerType = triggerType
        self.triggerPhase = triggerPhase
        self.triggerName = triggerName
        self.componentReferences = componentReferences
        self.rewardStates = rewardStates
        self.eventNames = eventNames
        self.slots = slots
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey { 
        case triggerId = "trigger_id"
        case triggerType = "trigger_type"
        case triggerPhase = "trigger_phase"
        case triggerName = "trigger_name"
        case componentReferences = "component_references"
        case rewardStates = "reward_states"
        case eventNames = "event_names"
        case slots
        case tags
    }

}
