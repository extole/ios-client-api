//
// ReportRunnerRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ReportRunnerRequest: Codable {

    public enum ModelType: String, Codable { 
        case scheduled = "SCHEDULED"
        case refreshing = "REFRESHING"
    }
    public enum Formats: String, Codable { 
        case json = "JSON"
        case csv = "CSV"
        case xlsx = "XLSX"
        case psv = "PSV"
        case headlessCsv = "HEADLESS_CSV"
        case headlessPsv = "HEADLESS_PSV"
    }
    public enum Scopes: String, Codable { 
        case clientSuperuser = "CLIENT_SUPERUSER"
        case clientAdmin = "CLIENT_ADMIN"
        case consumerPublic = "CONSUMER_PUBLIC"
    }
    public var type: ModelType?
    public var name: String?
    public var reportType: String?
    public var formats: [Formats]?
    public var parameters: [String:String]?
    public var tags: [String]?
    public var scopes: [Scopes]?
    public var sftpServerId: String?

    public init(type: ModelType? = nil, name: String? = nil, reportType: String? = nil, formats: [Formats]? = nil, parameters: [String:String]? = nil, tags: [String]? = nil, scopes: [Scopes]? = nil, sftpServerId: String? = nil) {
        self.type = type
        self.name = name
        self.reportType = reportType
        self.formats = formats
        self.parameters = parameters
        self.tags = tags
        self.scopes = scopes
        self.sftpServerId = sftpServerId
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case name
        case reportType = "report_type"
        case formats
        case parameters
        case tags
        case scopes
        case sftpServerId = "sftp_server_id"
    }

}
