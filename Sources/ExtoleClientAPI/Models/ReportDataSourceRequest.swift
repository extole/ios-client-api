//
// ReportDataSourceRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ReportDataSourceRequest: Codable {

    public enum ModelType: String, Codable { 
        case report = "REPORT"
        case audienceList = "AUDIENCE_LIST"
        case fileAsset = "FILE_ASSET"
    }
    public var type: ModelType?
    public var reportId: String?

    public init(type: ModelType? = nil, reportId: String? = nil) {
        self.type = type
        self.reportId = reportId
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case reportId = "report_id"
    }

}
