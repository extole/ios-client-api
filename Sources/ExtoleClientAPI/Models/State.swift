//
// State.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct State: Codable {

    public var isoCode: String?
    public var name: String?

    public init(isoCode: String? = nil, name: String? = nil) {
        self.isoCode = isoCode
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case isoCode = "iso_code"
        case name
    }

}