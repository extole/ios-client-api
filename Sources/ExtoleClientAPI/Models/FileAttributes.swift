//
// FileAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FileAttributes: Codable {

    public var fileName: String?
    public var size: Int64?

    public init(fileName: String? = nil, size: Int64? = nil) {
        self.fileName = fileName
        self.size = size
    }


}