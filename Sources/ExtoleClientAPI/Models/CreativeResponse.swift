//
// CreativeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreativeResponse: Codable {

    public var _id: String?
    public var name: String?
    public var classification: String?
    public var createdDate: Int64?
    public var latestVersion: String?
    public var output: [String:[String]]?
    public var apiVersion: Int?
    public var themeVersion: String?
    public var locales: [String]?
    public var availableLocales: [String]?
    public var defaultLocale: String?

    public init(_id: String? = nil, name: String? = nil, classification: String? = nil, createdDate: Int64? = nil, latestVersion: String? = nil, output: [String:[String]]? = nil, apiVersion: Int? = nil, themeVersion: String? = nil, locales: [String]? = nil, availableLocales: [String]? = nil, defaultLocale: String? = nil) {
        self._id = _id
        self.name = name
        self.classification = classification
        self.createdDate = createdDate
        self.latestVersion = latestVersion
        self.output = output
        self.apiVersion = apiVersion
        self.themeVersion = themeVersion
        self.locales = locales
        self.availableLocales = availableLocales
        self.defaultLocale = defaultLocale
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case classification
        case createdDate = "created_date"
        case latestVersion = "latest_version"
        case output
        case apiVersion = "api_version"
        case themeVersion = "theme_version"
        case locales
        case availableLocales = "available_locales"
        case defaultLocale = "default_locale"
    }

}
