//
// CampaignCreateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignCreateRequest: Codable {

    public var name: String?
    public var _description: String?
    public var programType: String?
    public var tags: [String]?

    public init(name: String? = nil, _description: String? = nil, programType: String? = nil, tags: [String]? = nil) {
        self.name = name
        self._description = _description
        self.programType = programType
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _description = "description"
        case programType = "program_type"
        case tags
    }

}