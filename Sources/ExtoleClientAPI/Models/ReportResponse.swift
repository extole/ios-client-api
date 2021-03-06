//
// ReportResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ReportResponse: Codable {

    public enum ExecutorType: String, Codable { 
        case sql = "SQL"
        case spark = "SPARK"
        case dashboard = "DASHBOARD"
    }
    public enum Format: String, Codable { 
        case json = "JSON"
        case csv = "CSV"
        case xlsx = "XLSX"
        case psv = "PSV"
        case headlessCsv = "HEADLESS_CSV"
        case headlessPsv = "HEADLESS_PSV"
    }
    public enum Formats: String, Codable { 
        case json = "JSON"
        case csv = "CSV"
        case xlsx = "XLSX"
        case psv = "PSV"
        case headlessCsv = "HEADLESS_CSV"
        case headlessPsv = "HEADLESS_PSV"
    }
    public enum Status: String, Codable { 
        case pending = "PENDING"
        case inProgress = "IN_PROGRESS"
        case done = "DONE"
        case failed = "FAILED"
        case canceled = "CANCELED"
        case sftpDeliveryFailed = "SFTP_DELIVERY_FAILED"
        case expired = "EXPIRED"
    }
    public enum Scopes: String, Codable { 
        case clientSuperuser = "CLIENT_SUPERUSER"
        case clientAdmin = "CLIENT_ADMIN"
        case consumerPublic = "CONSUMER_PUBLIC"
    }
    public var reportId: String?
    public var name: String?
    public var displayName: String?
    public var executorType: ExecutorType?
    public var format: Format?
    public var formats: [Formats]?
    public var status: Status?
    public var userId: String?
    public var parameters: [String:ReportParameterResponse]?
    public var tags: [String]?
    public var createdDate: Date?
    public var startedDate: Date?
    public var completedDate: Date?
    public var errorCode: String?
    public var downloadUri: String?
    public var sftpReportName: String?
    public var visible: Bool?
    public var scopes: [Scopes]?
    public var sftpServerId: String?

    public init(reportId: String? = nil, name: String? = nil, displayName: String? = nil, executorType: ExecutorType? = nil, format: Format? = nil, formats: [Formats]? = nil, status: Status? = nil, userId: String? = nil, parameters: [String:ReportParameterResponse]? = nil, tags: [String]? = nil, createdDate: Date? = nil, startedDate: Date? = nil, completedDate: Date? = nil, errorCode: String? = nil, downloadUri: String? = nil, sftpReportName: String? = nil, visible: Bool? = nil, scopes: [Scopes]? = nil, sftpServerId: String? = nil) {
        self.reportId = reportId
        self.name = name
        self.displayName = displayName
        self.executorType = executorType
        self.format = format
        self.formats = formats
        self.status = status
        self.userId = userId
        self.parameters = parameters
        self.tags = tags
        self.createdDate = createdDate
        self.startedDate = startedDate
        self.completedDate = completedDate
        self.errorCode = errorCode
        self.downloadUri = downloadUri
        self.sftpReportName = sftpReportName
        self.visible = visible
        self.scopes = scopes
        self.sftpServerId = sftpServerId
    }

    public enum CodingKeys: String, CodingKey { 
        case reportId = "report_id"
        case name
        case displayName = "display_name"
        case executorType = "executor_type"
        case format
        case formats
        case status
        case userId = "user_id"
        case parameters
        case tags
        case createdDate = "created_date"
        case startedDate = "started_date"
        case completedDate = "completed_date"
        case errorCode = "error_code"
        case downloadUri = "download_uri"
        case sftpReportName = "sftp_report_name"
        case visible
        case scopes
        case sftpServerId = "sftp_server_id"
    }

}
