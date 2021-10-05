//
// SetSandboxPrehandlerActionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Action that modifies the event sandbox. */

public struct SetSandboxPrehandlerActionResponse: Codable {

    public enum ModelType: String, Codable { 
        case setData = "SET_DATA"
        case setSandbox = "SET_SANDBOX"
        case mapDataAttributes = "MAP_DATA_ATTRIBUTES"
        case javascriptV1 = "JAVASCRIPT_V1"
    }
    public var _id: String?
    public var type: ModelType?
    public var sandboxId: String?

    public init(_id: String? = nil, type: ModelType? = nil, sandboxId: String? = nil) {
        self._id = _id
        self.type = type
        self.sandboxId = sandboxId
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case type
        case sandboxId = "sandbox_id"
    }

}
