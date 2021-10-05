//
// ProfileBlockRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProfileBlockRequest: Codable {

    public enum Action: String, Codable { 
        case block = "BLOCK"
        case unblock = "UNBLOCK"
    }
    public var action: Action?
    public var reason: String?

    public init(action: Action? = nil, reason: String? = nil) {
        self.action = action
        self.reason = reason
    }


}