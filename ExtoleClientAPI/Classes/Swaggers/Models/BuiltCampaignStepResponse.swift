//
// BuiltCampaignStepResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BuiltCampaignStepResponse: Codable {

    public enum Category: String, Codable { 
        case promote = "PROMOTE"
        case advocate = "ADVOCATE"
        case friend = "FRIEND"
        case other = "OTHER"
        case admin = "ADMIN"
    }
    public var _id: String?
    public var name: String?
    public var category: Category?
    public var processor: CampaignStepProcessor?
    public var mappings: [BuiltCampaignStepMappingResponse]?
    public var aliases: [String]?
    public var archived: Bool?
    public var componentReferences: [CampaignComponentReferenceResponse]?

    public init(_id: String? = nil, name: String? = nil, category: Category? = nil, processor: CampaignStepProcessor? = nil, mappings: [BuiltCampaignStepMappingResponse]? = nil, aliases: [String]? = nil, archived: Bool? = nil, componentReferences: [CampaignComponentReferenceResponse]? = nil) {
        self._id = _id
        self.name = name
        self.category = category
        self.processor = processor
        self.mappings = mappings
        self.aliases = aliases
        self.archived = archived
        self.componentReferences = componentReferences
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case category
        case processor
        case mappings
        case aliases
        case archived
        case componentReferences = "component_references"
    }

}
