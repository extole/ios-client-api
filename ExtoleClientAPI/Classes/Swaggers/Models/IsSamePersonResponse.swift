//
// IsSamePersonResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IsSamePersonResponse: Codable {

    public var isSame: Bool?

    public init(isSame: Bool? = nil) {
        self.isSame = isSame
    }

    public enum CodingKeys: String, CodingKey { 
        case isSame = "is_same"
    }

}
