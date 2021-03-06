//
// FilesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FilesAPI: APIBase {
    /**
     Delete file
     
     - parameter docId: (path) Id of document 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func docHostDelete(docId docId: String, completion: ((error: ErrorType?) -> Void)) {
        docHostDeleteWithRequestBuilder(docId: docId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete file
     - DELETE /files/{docId}
     - Deletes a users file
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter docId: (path) Id of document 

     - returns: RequestBuilder<Void> 
     */
    public class func docHostDeleteWithRequestBuilder(docId docId: String) -> RequestBuilder<Void> {
        var path = "/files/{docId}"
        path = path.stringByReplacingOccurrencesOfString("{docId}", withString: "\(docId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get file
     
     - parameter docId: (path) Id of document 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func docHostGet(docId docId: String, completion: ((data: HostedDoc?, error: ErrorType?) -> Void)) {
        docHostGetWithRequestBuilder(docId: docId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get file
     - GET /files/{docId}
     - Get a single file by id
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{contentType=application/json, example={
  "fileName" : "fileName",
  "uploadDate" : "2000-01-23T04:56:07.000+00:00",
  "shortUrl" : "shortUrl",
  "longUrl" : "longUrl",
  "id" : "id",
  "userId" : "userId"
}}]
     
     - parameter docId: (path) Id of document 

     - returns: RequestBuilder<HostedDoc> 
     */
    public class func docHostGetWithRequestBuilder(docId docId: String) -> RequestBuilder<HostedDoc> {
        var path = "/files/{docId}"
        path = path.stringByReplacingOccurrencesOfString("{docId}", withString: "\(docId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<HostedDoc>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List all files
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func docHostList(completion: ((data: [HostedDoc]?, error: ErrorType?) -> Void)) {
        docHostListWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List all files
     - GET /files
     - List all uploaded user files
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{contentType=application/json, example=[ {
  "fileName" : "fileName",
  "uploadDate" : "2000-01-23T04:56:07.000+00:00",
  "shortUrl" : "shortUrl",
  "longUrl" : "longUrl",
  "id" : "id",
  "userId" : "userId"
}, {
  "fileName" : "fileName",
  "uploadDate" : "2000-01-23T04:56:07.000+00:00",
  "shortUrl" : "shortUrl",
  "longUrl" : "longUrl",
  "id" : "id",
  "userId" : "userId"
} ]}]

     - returns: RequestBuilder<[HostedDoc]> 
     */
    public class func docHostListWithRequestBuilder() -> RequestBuilder<[HostedDoc]> {
        let path = "/files"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[HostedDoc]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Upload a file
     
     - parameter file: (form) The file being uploaded 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func docHostUploadV2(file file: String, completion: ((data: [HostedDoc]?, error: ErrorType?) -> Void)) {
        docHostUploadV2WithRequestBuilder(file: file).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Upload a file
     - POST /files
     - Upload a new file
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{contentType=application/json, example=[ {
  "fileName" : "fileName",
  "uploadDate" : "2000-01-23T04:56:07.000+00:00",
  "shortUrl" : "shortUrl",
  "longUrl" : "longUrl",
  "id" : "id",
  "userId" : "userId"
}, {
  "fileName" : "fileName",
  "uploadDate" : "2000-01-23T04:56:07.000+00:00",
  "shortUrl" : "shortUrl",
  "longUrl" : "longUrl",
  "id" : "id",
  "userId" : "userId"
} ]}]
     
     - parameter file: (form) The file being uploaded 

     - returns: RequestBuilder<[HostedDoc]> 
     */
    public class func docHostUploadV2WithRequestBuilder(file file: String) -> RequestBuilder<[HostedDoc]> {
        let path = "/files"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "file": file
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[HostedDoc]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get paged hosted images
     
     - parameter pageSize: (query) The number of items to retrieve in a single db query. 
     - parameter page: (query) Zero-based index of the page of data to retrieve from the db. 
     - parameter search: (query) Filter results with names that match the search term. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getHostedImagesPaged(pageSize pageSize: String, page: String, search: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        getHostedImagesPagedWithRequestBuilder(pageSize: pageSize, page: page, search: search).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get paged hosted images
     - GET /files/images/paged
     - Get a specific page of uploaded images available to the user.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter pageSize: (query) The number of items to retrieve in a single db query. 
     - parameter page: (query) Zero-based index of the page of data to retrieve from the db. 
     - parameter search: (query) Filter results with names that match the search term. (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func getHostedImagesPagedWithRequestBuilder(pageSize pageSize: String, page: String, search: String? = nil) -> RequestBuilder<Void> {
        let path = "/files/images/paged"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "pageSize": pageSize,
            "page": page,
            "search": search
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
