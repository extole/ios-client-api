//
// TypeBindings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TypeBindings: Codable {

    public var empty: Bool?
    public var typeParameters: [JavaType]?

    public init(empty: Bool? = nil, typeParameters: [JavaType]? = nil) {
        self.empty = empty
        self.typeParameters = typeParameters
    }


}
