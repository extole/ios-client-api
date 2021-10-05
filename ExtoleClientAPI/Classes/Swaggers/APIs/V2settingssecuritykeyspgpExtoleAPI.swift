//
// V2settingssecuritykeyspgpExtoleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class V2settingssecuritykeyspgpExtoleAPI {
    /**
     Delete a Pgp Extole Key

     - parameter keyId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func archivePgpExtoleKey1(keyId: String, completion: @escaping ((_ data: PgpExtoleClientKeyResponse?,_ error: Error?) -> Void)) {
        archivePgpExtoleKey1WithRequestBuilder(keyId: keyId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a Pgp Extole Key
     - DELETE /v2/settings/security/keys/pgp-extole/private/{key_id}
     - 

     - API Key:
       - type: apiKey access_token (QUERY)
       - name: COOKIE
     - API Key:
       - type: apiKey authorization 
       - name: HEADER
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: QUERY
     - examples: [{contentType=application/json, example={
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "email" : "email",
  "key" : "key",
  "algorithm" : "RSA"
}}]
     - parameter keyId: (path)  

     - returns: RequestBuilder<PgpExtoleClientKeyResponse> 
     */
    open class func archivePgpExtoleKey1WithRequestBuilder(keyId: String) -> RequestBuilder<PgpExtoleClientKeyResponse> {
        var path = "/v2/settings/security/keys/pgp-extole/private/{key_id}"
        let keyIdPreEscape = "\(keyId)"
        let keyIdPostEscape = keyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{key_id}", with: keyIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PgpExtoleClientKeyResponse>.Type = ExtoleClientAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create a Pgp Extole Key

     - parameter body: (body) KeyCreateRequest object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPgpExtoleKey1(body: PgpExtoleClientKeyCreateRequest, completion: @escaping ((_ data: PgpExtoleClientKeyResponse?,_ error: Error?) -> Void)) {
        createPgpExtoleKey1WithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a Pgp Extole Key
     - POST /v2/settings/security/keys/pgp-extole/private

     - API Key:
       - type: apiKey access_token (QUERY)
       - name: COOKIE
     - API Key:
       - type: apiKey authorization 
       - name: HEADER
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: QUERY
     - examples: [{contentType=application/json, example={
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "email" : "email",
  "key" : "key",
  "algorithm" : "RSA"
}}]
     - parameter body: (body) KeyCreateRequest object 

     - returns: RequestBuilder<PgpExtoleClientKeyResponse> 
     */
    open class func createPgpExtoleKey1WithRequestBuilder(body: PgpExtoleClientKeyCreateRequest) -> RequestBuilder<PgpExtoleClientKeyResponse> {
        let path = "/v2/settings/security/keys/pgp-extole/private"
        let URLString = ExtoleClientAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PgpExtoleClientKeyResponse>.Type = ExtoleClientAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Get a list of Pgp Extole Keys

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listPgpExtoleKeys1(completion: @escaping ((_ data: [PgpExtoleClientKeyResponse]?,_ error: Error?) -> Void)) {
        listPgpExtoleKeys1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of Pgp Extole Keys
     - GET /v2/settings/security/keys/pgp-extole

     - API Key:
       - type: apiKey access_token (QUERY)
       - name: COOKIE
     - API Key:
       - type: apiKey authorization 
       - name: HEADER
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: QUERY
     - examples: [{contentType=application/json, example=[ {
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "email" : "email",
  "key" : "key",
  "algorithm" : "RSA"
}, {
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "email" : "email",
  "key" : "key",
  "algorithm" : "RSA"
} ]}]

     - returns: RequestBuilder<[PgpExtoleClientKeyResponse]> 
     */
    open class func listPgpExtoleKeys1WithRequestBuilder() -> RequestBuilder<[PgpExtoleClientKeyResponse]> {
        let path = "/v2/settings/security/keys/pgp-extole"
        let URLString = ExtoleClientAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[PgpExtoleClientKeyResponse]>.Type = ExtoleClientAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
