//
// EmailsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class EmailsAPI: APIBase {
    /**
     Create an Email with Printing Press
     
     - parameter templateId: (form) The template id to be printed. 
     - parameter content: (form) The content of the email. 
     - parameter emailId: (form) The email id to be printed to. (optional)
     - parameter videoId: (form) A video to replace video place holders with. (optional)
     - parameter subjectLine: (form) The subject line to be printed. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createPrintingPressEmail(templateId templateId: String, content: String, emailId: String? = nil, videoId: String? = nil, subjectLine: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        createPrintingPressEmailWithRequestBuilder(templateId: templateId, content: content, emailId: emailId, videoId: videoId, subjectLine: subjectLine).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Create an Email with Printing Press
     - POST /emails/print
     - Prints an email using the template id and content to the users account.If a video id is included, it will replace any video placeholders with that video.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter templateId: (form) The template id to be printed. 
     - parameter content: (form) The content of the email. 
     - parameter emailId: (form) The email id to be printed to. (optional)
     - parameter videoId: (form) A video to replace video place holders with. (optional)
     - parameter subjectLine: (form) The subject line to be printed. (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createPrintingPressEmailWithRequestBuilder(templateId templateId: String, content: String, emailId: String? = nil, videoId: String? = nil, subjectLine: String? = nil) -> RequestBuilder<Void> {
        let path = "/emails/print"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "templateId": templateId,
            "content": content,
            "emailId": emailId,
            "videoId": videoId,
            "subjectLine": subjectLine
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Email Tracking
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTracking(emailId emailId: String, jobId: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        getEmailTrackingWithRequestBuilder(emailId: emailId, jobId: jobId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get Email Tracking
     - GET /emails/{emailId}/tracking
     - Get Tracking data for all sends of an Email
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func getEmailTrackingWithRequestBuilder(emailId emailId: String, jobId: String? = nil) -> RequestBuilder<Void> {
        var path = "/emails/{emailId}/tracking"
        path = path.stringByReplacingOccurrencesOfString("{emailId}", withString: "\(emailId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "jobId": jobId
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Email Tracking Interactions
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)
     - parameter interactionType: (query) Interaction type to order and filter by (optional)
     - parameter searchTerm: (query) Search term to filer by (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getEmailTrackingInteractions(emailId emailId: String, jobId: String? = nil, interactionType: String? = nil, searchTerm: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        getEmailTrackingInteractionsWithRequestBuilder(emailId: emailId, jobId: jobId, interactionType: interactionType, searchTerm: searchTerm).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get Email Tracking Interactions
     - GET /emails/{emailId}/tracking/interactions
     - Get Contact detail interactions for an Email
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)
     - parameter interactionType: (query) Interaction type to order and filter by (optional)
     - parameter searchTerm: (query) Search term to filer by (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func getEmailTrackingInteractionsWithRequestBuilder(emailId emailId: String, jobId: String? = nil, interactionType: String? = nil, searchTerm: String? = nil) -> RequestBuilder<Void> {
        var path = "/emails/{emailId}/tracking/interactions"
        path = path.stringByReplacingOccurrencesOfString("{emailId}", withString: "\(emailId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "jobId": jobId,
            "interactionType": interactionType,
            "searchTerm": searchTerm
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Hourly Email Tracking
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)
     - parameter interactionType: (query) Interaction type to filter by (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getHourlyEmailTracking(emailId emailId: String, jobId: String? = nil, interactionType: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        getHourlyEmailTrackingWithRequestBuilder(emailId: emailId, jobId: jobId, interactionType: interactionType).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get Hourly Email Tracking
     - GET /emails/{emailId}/tracking/hourly
     - Get Tracking data for an Email,             broken down by the hour and filterable by an Interaction type
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter emailId: (path) ID of the email 
     - parameter jobId: (query) ID of the Job (or null for all jobs) (optional)
     - parameter interactionType: (query) Interaction type to filter by (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func getHourlyEmailTrackingWithRequestBuilder(emailId emailId: String, jobId: String? = nil, interactionType: String? = nil) -> RequestBuilder<Void> {
        var path = "/emails/{emailId}/tracking/hourly"
        path = path.stringByReplacingOccurrencesOfString("{emailId}", withString: "\(emailId)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "jobId": jobId,
            "interactionType": interactionType
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}