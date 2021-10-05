//
// BuiltCampaignStepMappingResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BuiltCampaignStepMappingResponse: Codable {

    public enum EnabledOnStates: String, Codable { 
        case notLaunched = "NOT_LAUNCHED"
        case live = "LIVE"
        case paused = "PAUSED"
        case ended = "ENDED"
        case stopped = "STOPPED"
    }
    public enum ExperienceTypes: String, Codable { 
        case advocate = "ADVOCATE"
        case friend = "FRIEND"
    }
    public var _id: String?
    public var zone: BuiltCampaignStepMappingZoneResponse?
    public var creative: CreativeResponse?
    public var enabled: Bool?
    public var enabledOnStates: [EnabledOnStates]?
    public var showEnableToggle: Bool?
    public var experienceTypes: [ExperienceTypes]?
    public var componentReferences: [CampaignComponentReferenceResponse]?
    public var data: [StepDataResponse]?

    public init(_id: String? = nil, zone: BuiltCampaignStepMappingZoneResponse? = nil, creative: CreativeResponse? = nil, enabled: Bool? = nil, enabledOnStates: [EnabledOnStates]? = nil, showEnableToggle: Bool? = nil, experienceTypes: [ExperienceTypes]? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil, data: [StepDataResponse]? = nil) {
        self._id = _id
        self.zone = zone
        self.creative = creative
        self.enabled = enabled
        self.enabledOnStates = enabledOnStates
        self.showEnableToggle = showEnableToggle
        self.experienceTypes = experienceTypes
        self.componentReferences = componentReferences
        self.data = data
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case zone
        case creative
        case enabled
        case enabledOnStates = "enabled_on_states"
        case showEnableToggle = "show_enable_toggle"
        case experienceTypes = "experience_types"
        case componentReferences = "component_references"
        case data
    }

}