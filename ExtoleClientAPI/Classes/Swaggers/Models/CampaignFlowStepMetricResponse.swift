//
// CampaignFlowStepMetricResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignFlowStepMetricResponse: Codable {

    public var name: BuildtimeEvaluatableCampaignBuildtimeContextString?
    public var _description: BuildtimeEvaluatableCampaignBuildtimeContextOptionalString?
    public var expression: BuildtimeEvaluatableCampaignBuildtimeContextString?
    public var unit: String?
    public var tags: [String]?

    public init(name: BuildtimeEvaluatableCampaignBuildtimeContextString? = nil, _description: BuildtimeEvaluatableCampaignBuildtimeContextOptionalString? = nil, expression: BuildtimeEvaluatableCampaignBuildtimeContextString? = nil, unit: String? = nil, tags: [String]? = nil) {
        self.name = name
        self._description = _description
        self.expression = expression
        self.unit = unit
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _description = "description"
        case expression
        case unit
        case tags
    }

}