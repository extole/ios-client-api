//
// ReportRunnerEndpoints.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ReportRunnerEndpoints {
    /**
     Create a report runner.

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createReportRunner(body: ReportRunnerRequest, completion: @escaping ((_ data: ReportRunnerResponse?,_ error: Error?) -> Void)) {
        createReportRunnerWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a report runner.
     - POST /v6/report-runners
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
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<ReportRunnerResponse> 
     */
    open class func createReportRunnerWithRequestBuilder(body: ReportRunnerRequest) -> RequestBuilder<ReportRunnerResponse> {
        let path = "/v6/report-runners"
        let URLString = ExtoleClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReportRunnerResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Delete report runner for the specified id.

     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteReportRunner(reportRunnerId: String, completion: @escaping ((_ data: ReportRunnerResponse?,_ error: Error?) -> Void)) {
        deleteReportRunnerWithRequestBuilder(reportRunnerId: reportRunnerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete report runner for the specified id.
     - DELETE /v6/report-runners/{reportRunnerId}
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
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
}}]
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 

     - returns: RequestBuilder<ReportRunnerResponse> 
     */
    open class func deleteReportRunnerWithRequestBuilder(reportRunnerId: String) -> RequestBuilder<ReportRunnerResponse> {
        var path = "/v6/report-runners/{reportRunnerId}"
        let reportRunnerIdPreEscape = "\(reportRunnerId)"
        let reportRunnerIdPostEscape = reportRunnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{reportRunnerId}", with: reportRunnerIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReportRunnerResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get report runner for the specified id.

     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReportRunner(reportRunnerId: String, completion: @escaping ((_ data: ReportRunnerResponse?,_ error: Error?) -> Void)) {
        getReportRunnerWithRequestBuilder(reportRunnerId: reportRunnerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get report runner for the specified id.
     - GET /v6/report-runners/{reportRunnerId}
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
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
}}]
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 

     - returns: RequestBuilder<ReportRunnerResponse> 
     */
    open class func getReportRunnerWithRequestBuilder(reportRunnerId: String) -> RequestBuilder<ReportRunnerResponse> {
        var path = "/v6/report-runners/{reportRunnerId}"
        let reportRunnerIdPreEscape = "\(reportRunnerId)"
        let reportRunnerIdPostEscape = reportRunnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{reportRunnerId}", with: reportRunnerIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReportRunnerResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Gets a filtered list of report runners

     - parameter type: (query)  (optional)
     - parameter reportTypeName: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter requiredTags: (query)  (optional)
     - parameter excludeTags: (query)  (optional)
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReportRunners(type: String? = nil, reportTypeName: String? = nil, tags: String? = nil, requiredTags: String? = nil, excludeTags: String? = nil, offset: String? = nil, limit: String? = nil, completion: @escaping ((_ data: [ReportRunnerResponse]?,_ error: Error?) -> Void)) {
        getReportRunnersWithRequestBuilder(type: type, reportTypeName: reportTypeName, tags: tags, requiredTags: requiredTags, excludeTags: excludeTags, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Gets a filtered list of report runners
     - GET /v6/report-runners
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
     - examples: [{contentType=application/json, example=[ {
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
}, {
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
} ]}]
     - parameter type: (query)  (optional)
     - parameter reportTypeName: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter requiredTags: (query)  (optional)
     - parameter excludeTags: (query)  (optional)
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional)

     - returns: RequestBuilder<[ReportRunnerResponse]> 
     */
    open class func getReportRunnersWithRequestBuilder(type: String? = nil, reportTypeName: String? = nil, tags: String? = nil, requiredTags: String? = nil, excludeTags: String? = nil, offset: String? = nil, limit: String? = nil) -> RequestBuilder<[ReportRunnerResponse]> {
        let path = "/v6/report-runners"
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "type": type, 
                        "report_type_name": reportTypeName, 
                        "tags": tags, 
                        "required_tags": requiredTags, 
                        "exclude_tags": excludeTags, 
                        "offset": offset, 
                        "limit": limit
        ])


        let requestBuilder: RequestBuilder<[ReportRunnerResponse]>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Gets a filtered list of reports executed by the report runner.Results are sorted by schedule date in descending order.

     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter statuses: (query) Optional filter for statuses, will return reports that have one of the specified values. Valid values: PENDING, IN_PROGRESS, DONE, FAILED, CANCELED, SFTP_DELIVERY_FAILED, EXPIRED (optional)
     - parameter offset: (query) Optional filter for offset, defaults to 0. (optional)
     - parameter limit: (query) Optional filter for limit, defaults to all. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReports(reportRunnerId: String, statuses: String? = nil, offset: String? = nil, limit: String? = nil, completion: @escaping ((_ data: [ReportResponse]?,_ error: Error?) -> Void)) {
        getReportsWithRequestBuilder(reportRunnerId: reportRunnerId, statuses: statuses, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Gets a filtered list of reports executed by the report runner.Results are sorted by schedule date in descending order.
     - GET /v6/report-runners/{reportRunnerId}/reports
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
     - examples: [{contentType=application/json, example=[ {
  "formats" : [ "JSON", "JSON" ],
  "visible" : true,
  "format" : "JSON",
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "display_name" : "display_name",
  "tags" : [ "tags", "tags" ],
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "executor_type" : "SQL",
  "user_id" : "user_id",
  "download_uri" : "download_uri",
  "report_id" : "report_id",
  "name" : "name",
  "sftp_server_id" : "sftp_server_id",
  "error_code" : "error_code",
  "sftp_report_name" : "sftp_report_name",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "status" : "PENDING"
}, {
  "formats" : [ "JSON", "JSON" ],
  "visible" : true,
  "format" : "JSON",
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "display_name" : "display_name",
  "tags" : [ "tags", "tags" ],
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "executor_type" : "SQL",
  "user_id" : "user_id",
  "download_uri" : "download_uri",
  "report_id" : "report_id",
  "name" : "name",
  "sftp_server_id" : "sftp_server_id",
  "error_code" : "error_code",
  "sftp_report_name" : "sftp_report_name",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "status" : "PENDING"
} ]}]
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter statuses: (query) Optional filter for statuses, will return reports that have one of the specified values. Valid values: PENDING, IN_PROGRESS, DONE, FAILED, CANCELED, SFTP_DELIVERY_FAILED, EXPIRED (optional)
     - parameter offset: (query) Optional filter for offset, defaults to 0. (optional)
     - parameter limit: (query) Optional filter for limit, defaults to all. (optional)

     - returns: RequestBuilder<[ReportResponse]> 
     */
    open class func getReportsWithRequestBuilder(reportRunnerId: String, statuses: String? = nil, offset: String? = nil, limit: String? = nil) -> RequestBuilder<[ReportResponse]> {
        var path = "/v6/report-runners/{reportRunnerId}/reports"
        let reportRunnerIdPreEscape = "\(reportRunnerId)"
        let reportRunnerIdPostEscape = reportRunnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{reportRunnerId}", with: reportRunnerIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "statuses": statuses, 
                        "offset": offset, 
                        "limit": limit
        ])


        let requestBuilder: RequestBuilder<[ReportResponse]>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Execute report runner for the specified id. Will return existing report if there is any currently in progress or generate a new one otherwise.

     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func run(reportRunnerId: String, completion: @escaping ((_ data: ReportResponse?,_ error: Error?) -> Void)) {
        runWithRequestBuilder(reportRunnerId: reportRunnerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Execute report runner for the specified id. Will return existing report if there is any currently in progress or generate a new one otherwise.
     - POST /v6/report-runners/{reportRunnerId}/run
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
  "formats" : [ "JSON", "JSON" ],
  "visible" : true,
  "format" : "JSON",
  "started_date" : "2000-01-23T04:56:07.000+00:00",
  "display_name" : "display_name",
  "tags" : [ "tags", "tags" ],
  "completed_date" : "2000-01-23T04:56:07.000+00:00",
  "executor_type" : "SQL",
  "user_id" : "user_id",
  "download_uri" : "download_uri",
  "report_id" : "report_id",
  "name" : "name",
  "sftp_server_id" : "sftp_server_id",
  "error_code" : "error_code",
  "sftp_report_name" : "sftp_report_name",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "status" : "PENDING"
}}]
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 

     - returns: RequestBuilder<ReportResponse> 
     */
    open class func runWithRequestBuilder(reportRunnerId: String) -> RequestBuilder<ReportResponse> {
        var path = "/v6/report-runners/{reportRunnerId}/run"
        let reportRunnerIdPreEscape = "\(reportRunnerId)"
        let reportRunnerIdPostEscape = reportRunnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{reportRunnerId}", with: reportRunnerIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReportResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update report runner for the specified id.

     - parameter body: (body)  
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateReportRunner(body: ReportRunnerRequest, reportRunnerId: String, completion: @escaping ((_ data: ReportRunnerResponse?,_ error: Error?) -> Void)) {
        updateReportRunnerWithRequestBuilder(body: body, reportRunnerId: reportRunnerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update report runner for the specified id.
     - PUT /v6/report-runners/{reportRunnerId}
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
  "formats" : [ "JSON", "JSON" ],
  "user_id" : "user_id",
  "name" : "name",
  "report_type_name" : "report_type_name",
  "sftp_server_id" : "sftp_server_id",
  "id" : "id",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00",
  "scopes" : [ "CLIENT_SUPERUSER", "CLIENT_SUPERUSER" ],
  "type" : "type",
  "parameters" : {
    "key" : {
      "details" : {
        "is_required" : true,
        "name" : "name",
        "display_name" : "display_name",
        "category" : "category",
        "type" : {
          "values" : [ "values", "values" ],
          "name" : "BOOLEAN"
        },
        "order" : 0
      },
      "value" : "value"
    }
  },
  "tags" : [ "tags", "tags" ]
}}]
     - parameter body: (body)  
     - parameter reportRunnerId: (path) The Extole unique report runner identifier. 

     - returns: RequestBuilder<ReportRunnerResponse> 
     */
    open class func updateReportRunnerWithRequestBuilder(body: ReportRunnerRequest, reportRunnerId: String) -> RequestBuilder<ReportRunnerResponse> {
        var path = "/v6/report-runners/{reportRunnerId}"
        let reportRunnerIdPreEscape = "\(reportRunnerId)"
        let reportRunnerIdPostEscape = reportRunnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{reportRunnerId}", with: reportRunnerIdPostEscape, options: .literal, range: nil)
        let URLString = ExtoleClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReportRunnerResponse>.Type = ExtoleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
