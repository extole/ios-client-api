//
// BatchJobEndpoints.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class BatchJobEndpoints {
    /**
     Get a BatchJob by id

     - parameter batchId: (path) BatchJob id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(batchId: String, completion: @escaping ((_ data: BatchJobResponse?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(batchId: batchId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a BatchJob by id
     - GET /v6/batches/{batchId}
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
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
}}]
     - parameter batchId: (path) BatchJob id 

     - returns: RequestBuilder<BatchJobResponse> 
     */
    open class func callGetWithRequestBuilder(batchId: String) -> RequestBuilder<BatchJobResponse> {
        var path = "/v6/batches/{batchId}"
        let batchIdPreEscape = "\(batchId)"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchJobResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Cancel an existing batchJob

     - parameter batchId: (path) BatchJob id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancel(batchId: String, completion: @escaping ((_ data: BatchJobResponse?,_ error: Error?) -> Void)) {
        cancelWithRequestBuilder(batchId: batchId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Cancel an existing batchJob
     - POST /v6/batches/{batchId}/cancel
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
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
}}]
     - parameter batchId: (path) BatchJob id 

     - returns: RequestBuilder<BatchJobResponse> 
     */
    open class func cancelWithRequestBuilder(batchId: String) -> RequestBuilder<BatchJobResponse> {
        var path = "/v6/batches/{batchId}/cancel"
        let batchIdPreEscape = "\(batchId)"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchJobResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Creates a new BatchJob

     - parameter body: (body) BatchJob request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(body: BatchJobCreateRequest, completion: @escaping ((_ data: BatchJobResponse?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a new BatchJob
     - POST /v6/batches
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
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
}}]
     - parameter body: (body) BatchJob request 

     - returns: RequestBuilder<BatchJobResponse> 
     */
    open class func createWithRequestBuilder(body: BatchJobCreateRequest) -> RequestBuilder<BatchJobResponse> {
        let path = "/v6/batches"
        let URLString = ExtoleClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchJobResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Download a BatchJob result by id

     - parameter batchId: (path) BatchJob id 
     - parameter format: (path) Format 
     - parameter contentType: (header)  (optional)
     - parameter limit: (query) Limit filter (optional)
     - parameter offset: (query) Offset filter (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func download(batchId: String, format: String, contentType: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        downloadWithRequestBuilder(batchId: batchId, format: format, contentType: contentType, limit: limit, offset: offset).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Download a BatchJob result by id
     - GET /v6/batches/{batchId}/download{format}

     - API Key:
       - type: apiKey access_token (QUERY)
       - name: COOKIE
     - API Key:
       - type: apiKey authorization 
       - name: HEADER
     - API Key:
       - type: apiKey access_token (QUERY)
       - name: QUERY
     - parameter batchId: (path) BatchJob id 
     - parameter format: (path) Format 
     - parameter contentType: (header)  (optional)
     - parameter limit: (query) Limit filter (optional)
     - parameter offset: (query) Offset filter (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func downloadWithRequestBuilder(batchId: String, format: String, contentType: String? = nil, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<Void> {
        var path = "/v6/batches/{batchId}/download{format}"
        let batchIdPreEscape = "\(batchId)"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let formatPreEscape = "\(format)"
        let formatPostEscape = formatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{format}", with: formatPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "limit": limit?.encodeToJSON(), 
                        "offset": offset?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
                        "Content-Type": contentType
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = ExtoleClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }
    /**
     Get a BatchJob info by id

     - parameter batchId: (path) BatchJob id 
     - parameter format: (path) Response format, supported formats: CSV 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func info(batchId: String, format: String, completion: @escaping ((_ data: BatchJobFormatInfoResponse?,_ error: Error?) -> Void)) {
        infoWithRequestBuilder(batchId: batchId, format: format).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a BatchJob info by id
     - GET /v6/batches/{batchId}/info/{format}

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
  "total_rows" : 6,
  "content_length" : 0
}}]
     - parameter batchId: (path) BatchJob id 
     - parameter format: (path) Response format, supported formats: CSV 

     - returns: RequestBuilder<BatchJobFormatInfoResponse> 
     */
    open class func infoWithRequestBuilder(batchId: String, format: String) -> RequestBuilder<BatchJobFormatInfoResponse> {
        var path = "/v6/batches/{batchId}/info/{format}"
        let batchIdPreEscape = "\(batchId)"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let formatPreEscape = "\(format)"
        let formatPostEscape = formatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{format}", with: formatPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchJobFormatInfoResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter status
     */
    public enum Status_list: String { 
        case pending = "PENDING"
        case inProgress = "IN_PROGRESS"
        case dispatching = "DISPATCHING"
        case done = "DONE"
        case failed = "FAILED"
        case canceled = "CANCELED"
        case expired = "EXPIRED"
    }

    /**
     Get a list with batchJobs

     - parameter name: (query)  (optional)
     - parameter eventName: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func list(name: String? = nil, eventName: String? = nil, userId: String? = nil, tags: [String]? = nil, status: [String]? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: [BatchJobResponse]?,_ error: Error?) -> Void)) {
        listWithRequestBuilder(name: name, eventName: eventName, userId: userId, tags: tags, status: status, limit: limit, offset: offset).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list with batchJobs
     - GET /v6/batches

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
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
}, {
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
} ]}]
     - parameter name: (query)  (optional)
     - parameter eventName: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter offset: (query)  (optional)

     - returns: RequestBuilder<[BatchJobResponse]> 
     */
    open class func listWithRequestBuilder(name: String? = nil, eventName: String? = nil, userId: String? = nil, tags: [String]? = nil, status: [String]? = nil, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<[BatchJobResponse]> {
        let path = "/v6/batches"
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "name": name, 
                        "event_name": eventName, 
                        "user_id": userId, 
                        "tags": tags, 
                        "status": status, 
                        "limit": limit?.encodeToJSON(), 
                        "offset": offset?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[BatchJobResponse]>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Updates a BatchJob by id

     - parameter body: (body)  
     - parameter batchId: (path) BatchJob id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(body: BatchJobUpdateRequest, batchId: String, completion: @escaping ((_ data: BatchJobResponse?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(body: body, batchId: batchId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates a BatchJob by id
     - PUT /v6/batches/{batchId}
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
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "event_data" : {
    "key" : "event_data"
  },
  "data_source" : {
    "id" : "id",
    "type" : "REPORT"
  },
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "tags", "tags" ],
  "event_columns" : [ "event_columns", "event_columns" ],
  "success_rows" : 0,
  "download_uri" : "download_uri",
  "failed_rows" : 6,
  "name" : "name",
  "topic_name" : "topic_name",
  "event_name" : "event_name",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "status" : "PENDING"
}}]
     - parameter body: (body)  
     - parameter batchId: (path) BatchJob id 

     - returns: RequestBuilder<BatchJobResponse> 
     */
    open class func updateWithRequestBuilder(body: BatchJobUpdateRequest, batchId: String) -> RequestBuilder<BatchJobResponse> {
        var path = "/v6/batches/{batchId}"
        let batchIdPreEscape = "\(batchId)"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchJobResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}