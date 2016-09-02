//
// TeamsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class TeamsAPI: APIBase {
    /**
     Cancel a Jericho Send
     
     - parameter jerichoId: (path) ID of the Jericho Job to cancel 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func cancelJerichoSend(jerichoId jerichoId: String, completion: ((error: ErrorType?) -> Void)) {
        cancelJerichoSendWithRequestBuilder(jerichoId: jerichoId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Cancel a Jericho Send
     - DELETE /team/{teamId}/jericho/{jerichoId}
     - Cancels a scheduled Jericho send from being sent.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter jerichoId: (path) ID of the Jericho Job to cancel 

     - returns: RequestBuilder<Void> 
     */
    public class func cancelJerichoSendWithRequestBuilder(jerichoId jerichoId: String) -> RequestBuilder<Void> {
        var path = "/team/{teamId}/jericho/{jerichoId}"
        path = path.stringByReplacingOccurrencesOfString("{jerichoId}", withString: "\(jerichoId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-nodejs-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-nodejs-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     * enum for parameter assetType
     */
    public enum AssetType_getClientGroupAssets: String { 
        case Email = "email"
        case Video = "video"
    }

    /**
     Lists team assets
     
     - parameter assetType: (query) The type of assets. 
     - parameter teamId: (query) The team containing the assets. (optional)
     - parameter autoTagName: (query) The auto tag name containing the assets. (optional)
     - parameter pageSize: (query) The number of items to retrieve in a single db query. (optional)
     - parameter page: (query) Zero-based index of the page of data to retrieve from the db. (optional)
     - parameter search: (query) Search words. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getClientGroupAssets(assetType assetType: AssetType_getClientGroupAssets, teamId: String? = nil, autoTagName: String? = nil, pageSize: String? = nil, page: String? = nil, search: String? = nil, completion: ((data: InlineResponse200?, error: ErrorType?) -> Void)) {
        getClientGroupAssetsWithRequestBuilder(assetType: assetType, teamId: teamId, autoTagName: autoTagName, pageSize: pageSize, page: page, search: search).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Lists team assets
     - GET /team/assets/
     - Returns a collection of assets
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "items" : [ {
    "id" : "aeiou",
    "userId" : "aeiou",
    "name" : "aeiou",
    "thumbUrl" : "aeiou"
  } ],
  "totalPages" : ""
}, contentType=application/json}]
     
     - parameter assetType: (query) The type of assets. 
     - parameter teamId: (query) The team containing the assets. (optional)
     - parameter autoTagName: (query) The auto tag name containing the assets. (optional)
     - parameter pageSize: (query) The number of items to retrieve in a single db query. (optional)
     - parameter page: (query) Zero-based index of the page of data to retrieve from the db. (optional)
     - parameter search: (query) Search words. (optional)

     - returns: RequestBuilder<InlineResponse200> 
     */
    public class func getClientGroupAssetsWithRequestBuilder(assetType assetType: AssetType_getClientGroupAssets, teamId: String? = nil, autoTagName: String? = nil, pageSize: String? = nil, page: String? = nil, search: String? = nil) -> RequestBuilder<InlineResponse200> {
        let path = "/team/assets/"
        let URLString = bombbomb-nodejs-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "assetType": assetType.rawValue,
            "teamId": teamId,
            "autoTagName": autoTagName,
            "pageSize": pageSize,
            "page": page,
            "search": search
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse200>.Type = bombbomb-nodejs-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List Jericho Sends
     
     - parameter teamId: (path) The team whose Jericho sends you wish to see. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getJerichoSends(teamId teamId: String, completion: ((data: [JerichoConfiguration]?, error: ErrorType?) -> Void)) {
        getJerichoSendsWithRequestBuilder(teamId: teamId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List Jericho Sends
     - GET /team/{teamId}/jericho
     - Lists Jericho sends, both pending and sent.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example=[ {
  "sendDate" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "clientGroupId" : "aeiou",
  "emailId" : "aeiou",
  "sendWithoutVideo" : true,
  "emailBody" : "aeiou",
  "status" : "aeiou",
  "promptBody" : "aeiou",
  "emailSubject" : "aeiou",
  "promptSubject" : "aeiou",
  "isPrompt" : true
} ], contentType=application/json}]
     
     - parameter teamId: (path) The team whose Jericho sends you wish to see. 

     - returns: RequestBuilder<[JerichoConfiguration]> 
     */
    public class func getJerichoSendsWithRequestBuilder(teamId teamId: String) -> RequestBuilder<[JerichoConfiguration]> {
        var path = "/team/{teamId}/jericho"
        path = path.stringByReplacingOccurrencesOfString("{teamId}", withString: "\(teamId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-nodejs-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[JerichoConfiguration]>.Type = bombbomb-nodejs-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates a Jericho send.
     
     - parameter config: (body) JSON representing a Jericho configuration 
     - parameter teamId: (path) The ID of the team. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func queueJerichoSend(config config: JerichoConfiguration, teamId: String, completion: ((data: JerichoConfiguration?, error: ErrorType?) -> Void)) {
        queueJerichoSendWithRequestBuilder(config: config, teamId: teamId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Creates a Jericho send.
     - POST /team/{teamId}/jericho
     - Sends email content on behalf of members of a client group. There are two forms this send can take:         Static Email, and Video Prompt. Static emails require only an emailId.         Video Prompts build emails dynamically and require most of the other fields.         You must be an administrator of a Team Account to use this method.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "sendDate" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "clientGroupId" : "aeiou",
  "emailId" : "aeiou",
  "sendWithoutVideo" : true,
  "emailBody" : "aeiou",
  "status" : "aeiou",
  "promptBody" : "aeiou",
  "emailSubject" : "aeiou",
  "promptSubject" : "aeiou",
  "isPrompt" : true
}, contentType=application/json}]
     
     - parameter config: (body) JSON representing a Jericho configuration 
     - parameter teamId: (path) The ID of the team. 

     - returns: RequestBuilder<JerichoConfiguration> 
     */
    public class func queueJerichoSendWithRequestBuilder(config config: JerichoConfiguration, teamId: String) -> RequestBuilder<JerichoConfiguration> {
        var path = "/team/{teamId}/jericho"
        path = path.stringByReplacingOccurrencesOfString("{teamId}", withString: "\(teamId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-nodejs-openapiAPI.basePath + path
        let parameters = config.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<JerichoConfiguration>.Type = bombbomb-nodejs-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
