//
// CampaignComponentReferenceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CampaignComponentReferenceResponse: Codable {

    public var name: String?
    public var tags: [String]?

    public init(name: String? = nil, tags: [String]? = nil) {
        self.name = name
        self.tags = tags
    }


}