//
// SetSandboxPrehandlerActionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Action that modifies the event sandbox. */

public struct SetSandboxPrehandlerActionRequest: Codable {

    public enum ModelType: String, Codable { 
        case setData = "SET_DATA"
        case setSandbox = "SET_SANDBOX"
        case mapDataAttributes = "MAP_DATA_ATTRIBUTES"
        case javascriptV1 = "JAVASCRIPT_V1"
    }
    public var type: ModelType
    /** Id of the sandbox to be set into the event. */
    public var sandboxId: String

    public init(type: ModelType, sandboxId: String) {
        self.type = type
        self.sandboxId = sandboxId
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case sandboxId = "sandbox_id"
    }

}