//
// ClientVersionEndpoints.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ClientVersionEndpoints {
    /**
     client version information

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(completion: @escaping ((_ data: ClientVersionResponse?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     client version information
     - GET /v2/client-version

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
  "changes_pending" : true,
  "version" : 0,
  "client_id" : "client_id"
}}]

     - returns: RequestBuilder<ClientVersionResponse> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<ClientVersionResponse> {
        let path = "/v2/client-version"
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ClientVersionResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
