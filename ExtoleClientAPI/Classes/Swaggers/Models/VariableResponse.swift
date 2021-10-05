//
// VariableResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VariableResponse: Codable {

    public var name: String?
    public var value: String?
    public var _description: String?

    public init(name: String? = nil, value: String? = nil, _description: String? = nil) {
        self.name = name
        self.value = value
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case value
        case _description = "description"
    }

}
