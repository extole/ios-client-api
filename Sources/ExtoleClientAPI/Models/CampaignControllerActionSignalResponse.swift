//
// CampaignControllerActionSignalResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignControllerActionSignalResponse: Codable {

    public enum ActionType: String, Codable { 
        case email = "EMAIL"
        case schedule = "SCHEDULE"
        case signal = "SIGNAL"
        case incentivize = "INCENTIVIZE"
        case shareEvent = "SHARE_EVENT"
        case fireAsPerson = "FIRE_AS_PERSON"
        case dataIntelligence = "DATA_INTELLIGENCE"
        case approve = "APPROVE"
        case decline = "DECLINE"
        case earnReward = "EARN_REWARD"
        case fulfillReward = "FULFILL_REWARD"
        case redeemReward = "REDEEM_REWARD"
        case cancelReward = "CANCEL_REWARD"
        case revokeReward = "REVOKE_REWARD"
        case stepSignal = "STEP_SIGNAL"
        case webhook = "WEBHOOK"
        case expression = "EXPRESSION"
    }
    public enum Quality: String, Codable { 
        case high = "HIGH"
        case low = "LOW"
        case always = "ALWAYS"
    }
    public var actionId: String?
    public var actionType: ActionType?
    public var quality: Quality?
    public var componentReferences: [CampaignComponentReferenceResponse]?
    public var signalPollingId: String?
    public var data: [String:Entry?]?

    public init(actionId: String? = nil, actionType: ActionType? = nil, quality: Quality? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil, signalPollingId: String? = nil, data: [String:Entry?]? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.quality = quality
        self.componentReferences = componentReferences
        self.signalPollingId = signalPollingId
        self.data = data
    }

    public enum CodingKeys: String, CodingKey { 
        case actionId = "action_id"
        case actionType = "action_type"
        case quality
        case componentReferences = "component_references"
        case signalPollingId = "signal_polling_id"
        case data
    }

}
