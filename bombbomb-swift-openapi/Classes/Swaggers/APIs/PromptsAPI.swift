//
// PromptsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PromptsAPI: APIBase {
    /**
     Create a running Prompt Bot for a list
     
     - parameter listId: (form) The list id to attach the bot to. 
     - parameter emailId: (form) The default email to use. 
     - parameter name: (form) The name of the bot. 
     - parameter subject: (form) The subject of the default email. 
     - parameter content: (form) The content used in the email. 
     - parameter contactFieldValueColumn: (form) The custom field value column with dates for this bot. 
     - parameter botTypeId: (form) The type of bot to create. 
     - parameter templateId: (form) The template used to create the email id. 
     - parameter videoId: (form) The video used in the email. (optional)
     - parameter endDate: (form) The time frame to complete sending to the list. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createPromptBot(listId listId: String, emailId: String, name: String, subject: String, content: String, contactFieldValueColumn: String, botTypeId: String, templateId: String, videoId: String? = nil, endDate: String? = nil, completion: ((data: PromptBot?, error: ErrorType?) -> Void)) {
        createPromptBotWithRequestBuilder(listId: listId, emailId: emailId, name: name, subject: subject, content: content, contactFieldValueColumn: contactFieldValueColumn, botTypeId: botTypeId, templateId: templateId, videoId: videoId, endDate: endDate).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a running Prompt Bot for a list
     - POST /prompts/bots
     - Creates a Prompt Bot that sends emails to contacts on a list over the span of time defined.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "",
  "subject" : "aeiou",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "generatedBy" : "aeiou",
  "content" : "aeiou",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "emailId" : "aeiou",
  "botTypeId" : "aeiou",
  "listId" : "aeiou",
  "userId" : "aeiou",
  "name" : "aeiou",
  "videoId" : "aeiou",
  "contactFieldValueColumn" : "aeiou"
}, contentType=application/json}]
     
     - parameter listId: (form) The list id to attach the bot to. 
     - parameter emailId: (form) The default email to use. 
     - parameter name: (form) The name of the bot. 
     - parameter subject: (form) The subject of the default email. 
     - parameter content: (form) The content used in the email. 
     - parameter contactFieldValueColumn: (form) The custom field value column with dates for this bot. 
     - parameter botTypeId: (form) The type of bot to create. 
     - parameter templateId: (form) The template used to create the email id. 
     - parameter videoId: (form) The video used in the email. (optional)
     - parameter endDate: (form) The time frame to complete sending to the list. (optional)

     - returns: RequestBuilder<PromptBot> 
     */
    public class func createPromptBotWithRequestBuilder(listId listId: String, emailId: String, name: String, subject: String, content: String, contactFieldValueColumn: String, botTypeId: String, templateId: String, videoId: String? = nil, endDate: String? = nil) -> RequestBuilder<PromptBot> {
        let path = "/prompts/bots"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "listId": listId,
            "emailId": emailId,
            "videoId": videoId,
            "name": name,
            "subject": subject,
            "content": content,
            "contactFieldValueColumn": contactFieldValueColumn,
            "endDate": endDate,
            "botTypeId": botTypeId,
            "templateId": templateId
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PromptBot>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Prompts user to send a video
     
     - parameter prompt: (body) The Video Email Prompt to be created 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createVideoEmailPrompt(prompt prompt: VideoEmailPrompt, completion: ((data: VideoEmailPrompt?, error: ErrorType?) -> Void)) {
        createVideoEmailPromptWithRequestBuilder(prompt: prompt).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Prompts user to send a video
     - POST /prompt
     - Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "clientGroupId" : "aeiou",
  "promptBotId" : "aeiou",
  "exampleVideoId" : "aeiou",
  "jobId" : "aeiou",
  "sendWithoutVideo" : true,
  "status" : "",
  "promptIntro" : "aeiou",
  "applyTemplate" : true,
  "lastNotified" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "jerichoId" : "aeiou",
  "emailId" : "aeiou",
  "videoDueDate" : "2000-01-23T04:56:07.000+00:00",
  "contactId" : "aeiou",
  "promptHtml" : "aeiou",
  "followupVideoId" : "aeiou",
  "emailSubjectLine" : "aeiou",
  "toLists" : [ "aeiou" ],
  "emailContent" : "aeiou",
  "videoId" : "aeiou",
  "userId" : "aeiou",
  "thumbnailUrl" : "aeiou",
  "scheduledSendDate" : "2000-01-23T04:56:07.000+00:00",
  "promptSubject" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+00:00"
}, contentType=application/json}]
     
     - parameter prompt: (body) The Video Email Prompt to be created 

     - returns: RequestBuilder<VideoEmailPrompt> 
     */
    public class func createVideoEmailPromptWithRequestBuilder(prompt prompt: VideoEmailPrompt) -> RequestBuilder<VideoEmailPrompt> {
        let path = "/prompt"
        let URLString = bombbomb-swift-openapiAPI.basePath + path
        let parameters = prompt.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<VideoEmailPrompt>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List pending prompts
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPendingVideoEmailPrompts(completion: ((data: [VideoEmailPrompt]?, error: ErrorType?) -> Void)) {
        getPendingVideoEmailPromptsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List pending prompts
     - GET /prompt/pending
     - Returns a list of prompts that have not been sent yet, and can still be customized.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example=[ {
  "clientGroupId" : "aeiou",
  "promptBotId" : "aeiou",
  "exampleVideoId" : "aeiou",
  "jobId" : "aeiou",
  "sendWithoutVideo" : true,
  "status" : "",
  "promptIntro" : "aeiou",
  "applyTemplate" : true,
  "lastNotified" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "jerichoId" : "aeiou",
  "emailId" : "aeiou",
  "videoDueDate" : "2000-01-23T04:56:07.000+00:00",
  "contactId" : "aeiou",
  "promptHtml" : "aeiou",
  "followupVideoId" : "aeiou",
  "emailSubjectLine" : "aeiou",
  "toLists" : [ "aeiou" ],
  "emailContent" : "aeiou",
  "videoId" : "aeiou",
  "userId" : "aeiou",
  "thumbnailUrl" : "aeiou",
  "scheduledSendDate" : "2000-01-23T04:56:07.000+00:00",
  "promptSubject" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+00:00"
} ], contentType=application/json}]

     - returns: RequestBuilder<[VideoEmailPrompt]> 
     */
    public class func getPendingVideoEmailPromptsWithRequestBuilder() -> RequestBuilder<[VideoEmailPrompt]> {
        let path = "/prompt/pending"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[VideoEmailPrompt]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List Prompt Bots
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPromptBots(completion: ((data: [PromptBot]?, error: ErrorType?) -> Void)) {
        getPromptBotsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List Prompt Bots
     - GET /prompts/bots
     - Returns a list of all Prompt Bots for the user.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example=[ {
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "",
  "subject" : "aeiou",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "generatedBy" : "aeiou",
  "content" : "aeiou",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "emailId" : "aeiou",
  "botTypeId" : "aeiou",
  "listId" : "aeiou",
  "userId" : "aeiou",
  "name" : "aeiou",
  "videoId" : "aeiou",
  "contactFieldValueColumn" : "aeiou"
} ], contentType=application/json}]

     - returns: RequestBuilder<[PromptBot]> 
     */
    public class func getPromptBotsWithRequestBuilder() -> RequestBuilder<[PromptBot]> {
        let path = "/prompts/bots"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[PromptBot]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List Prompt Campaigns
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPromptCampaigns(completion: ((error: ErrorType?) -> Void)) {
        getPromptCampaignsWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     List Prompt Campaigns
     - GET /prompts/campaigns
     - Returns a list of all Prompt Campaigns for the user.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2

     - returns: RequestBuilder<Void> 
     */
    public class func getPromptCampaignsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/prompts/campaigns"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Gets a prompt
     
     - parameter id: (path) The Id of the prompt 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVideoEmailPrompt(id id: String, completion: ((data: VideoEmailPrompt?, error: ErrorType?) -> Void)) {
        getVideoEmailPromptWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a prompt
     - GET /prompt/{id}
     - Gets a prompt
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "clientGroupId" : "aeiou",
  "promptBotId" : "aeiou",
  "exampleVideoId" : "aeiou",
  "jobId" : "aeiou",
  "sendWithoutVideo" : true,
  "status" : "",
  "promptIntro" : "aeiou",
  "applyTemplate" : true,
  "lastNotified" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "jerichoId" : "aeiou",
  "emailId" : "aeiou",
  "videoDueDate" : "2000-01-23T04:56:07.000+00:00",
  "contactId" : "aeiou",
  "promptHtml" : "aeiou",
  "followupVideoId" : "aeiou",
  "emailSubjectLine" : "aeiou",
  "toLists" : [ "aeiou" ],
  "emailContent" : "aeiou",
  "videoId" : "aeiou",
  "userId" : "aeiou",
  "thumbnailUrl" : "aeiou",
  "scheduledSendDate" : "2000-01-23T04:56:07.000+00:00",
  "promptSubject" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+00:00"
}, contentType=application/json}]
     
     - parameter id: (path) The Id of the prompt 

     - returns: RequestBuilder<VideoEmailPrompt> 
     */
    public class func getVideoEmailPromptWithRequestBuilder(id id: String) -> RequestBuilder<VideoEmailPrompt> {
        var path = "/prompt/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<VideoEmailPrompt>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List prompts
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVideoEmailPrompts(completion: ((data: [VideoEmailPrompt]?, error: ErrorType?) -> Void)) {
        getVideoEmailPromptsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List prompts
     - GET /prompt/
     - Returns a list of all prompts.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example=[ {
  "clientGroupId" : "aeiou",
  "promptBotId" : "aeiou",
  "exampleVideoId" : "aeiou",
  "jobId" : "aeiou",
  "sendWithoutVideo" : true,
  "status" : "",
  "promptIntro" : "aeiou",
  "applyTemplate" : true,
  "lastNotified" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "jerichoId" : "aeiou",
  "emailId" : "aeiou",
  "videoDueDate" : "2000-01-23T04:56:07.000+00:00",
  "contactId" : "aeiou",
  "promptHtml" : "aeiou",
  "followupVideoId" : "aeiou",
  "emailSubjectLine" : "aeiou",
  "toLists" : [ "aeiou" ],
  "emailContent" : "aeiou",
  "videoId" : "aeiou",
  "userId" : "aeiou",
  "thumbnailUrl" : "aeiou",
  "scheduledSendDate" : "2000-01-23T04:56:07.000+00:00",
  "promptSubject" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+00:00"
} ], contentType=application/json}]

     - returns: RequestBuilder<[VideoEmailPrompt]> 
     */
    public class func getVideoEmailPromptsWithRequestBuilder() -> RequestBuilder<[VideoEmailPrompt]> {
        let path = "/prompt/"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[VideoEmailPrompt]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     * enum for parameter choice
     */
    public enum Choice_respondToVideoEmailPrompt: String { 
        case WithVideo = "WithVideo"
        case WithEmail = "WithEmail"
        case Cancel = "Cancel"
        case Restore = "Restore"
        case Reset = "Reset"
        case Manual = "Manual"
    }

    /**
     Respond to a prompt
     
     - parameter id: (path) The id of the prompt. 
     - parameter choice: (form) The users&#39; selection. Can be: WithVideo, WithEmail, Cancel, Restore, Reset, Manual 
     - parameter videoId: (form) The id of the video. (optional)
     - parameter emailId: (form) The id of the email. (optional)
     - parameter subject: (form) The subject of the email (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func respondToVideoEmailPrompt(id id: String, choice: Choice_respondToVideoEmailPrompt, videoId: String? = nil, emailId: String? = nil, subject: String? = nil, completion: ((data: VideoEmailPrompt?, error: ErrorType?) -> Void)) {
        respondToVideoEmailPromptWithRequestBuilder(id: id, choice: choice, videoId: videoId, emailId: emailId, subject: subject).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Respond to a prompt
     - POST /prompt/{id}/response
     - Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.
     - examples: [{example={
  "clientGroupId" : "aeiou",
  "promptBotId" : "aeiou",
  "exampleVideoId" : "aeiou",
  "jobId" : "aeiou",
  "sendWithoutVideo" : true,
  "status" : "",
  "promptIntro" : "aeiou",
  "applyTemplate" : true,
  "lastNotified" : "2000-01-23T04:56:07.000+00:00",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "jerichoId" : "aeiou",
  "emailId" : "aeiou",
  "videoDueDate" : "2000-01-23T04:56:07.000+00:00",
  "contactId" : "aeiou",
  "promptHtml" : "aeiou",
  "followupVideoId" : "aeiou",
  "emailSubjectLine" : "aeiou",
  "toLists" : [ "aeiou" ],
  "emailContent" : "aeiou",
  "videoId" : "aeiou",
  "userId" : "aeiou",
  "thumbnailUrl" : "aeiou",
  "scheduledSendDate" : "2000-01-23T04:56:07.000+00:00",
  "promptSubject" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+00:00"
}, contentType=application/json}]
     
     - parameter id: (path) The id of the prompt. 
     - parameter choice: (form) The users&#39; selection. Can be: WithVideo, WithEmail, Cancel, Restore, Reset, Manual 
     - parameter videoId: (form) The id of the video. (optional)
     - parameter emailId: (form) The id of the email. (optional)
     - parameter subject: (form) The subject of the email (optional)

     - returns: RequestBuilder<VideoEmailPrompt> 
     */
    public class func respondToVideoEmailPromptWithRequestBuilder(id id: String, choice: Choice_respondToVideoEmailPrompt, videoId: String? = nil, emailId: String? = nil, subject: String? = nil) -> RequestBuilder<VideoEmailPrompt> {
        var path = "/prompt/{id}/response"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "videoId": videoId,
            "emailId": emailId,
            "subject": subject,
            "choice": choice.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<VideoEmailPrompt>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update Prompt Bot
     
     - parameter id: (path) The bot id. 
     - parameter listId: (form) The list id to attach the bot to. 
     - parameter emailId: (form) The default email to use. 
     - parameter name: (form) The name of the bot. 
     - parameter subject: (form) The subject of the default email. 
     - parameter content: (form) The content used in the default email. 
     - parameter contactFieldValueColumn: (form) The custom field value column with dates for this bot. 
     - parameter templateId: (form) The template used to create the email id. 
     - parameter videoId: (form) The video used in the default email. (optional)
     - parameter endDate: (form) The time frame to complete sending to the list. (optional)
     - parameter status: (form) The status of the bot. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updatePromptBot(id id: String, listId: String, emailId: String, name: String, subject: String, content: String, contactFieldValueColumn: String, templateId: String, videoId: String? = nil, endDate: String? = nil, status: String? = nil, completion: ((data: PromptBot?, error: ErrorType?) -> Void)) {
        updatePromptBotWithRequestBuilder(id: id, listId: listId, emailId: emailId, name: name, subject: subject, content: content, contactFieldValueColumn: contactFieldValueColumn, templateId: templateId, videoId: videoId, endDate: endDate, status: status).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update Prompt Bot
     - PUT /prompts/bots/{id}
     - Updates a Prompt Bot's settings.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example={
  "startDate" : "2000-01-23T04:56:07.000+00:00",
  "status" : "",
  "subject" : "aeiou",
  "endDate" : "2000-01-23T04:56:07.000+00:00",
  "generatedBy" : "aeiou",
  "content" : "aeiou",
  "id" : "aeiou",
  "templateId" : "aeiou",
  "emailId" : "aeiou",
  "botTypeId" : "aeiou",
  "listId" : "aeiou",
  "userId" : "aeiou",
  "name" : "aeiou",
  "videoId" : "aeiou",
  "contactFieldValueColumn" : "aeiou"
}, contentType=application/json}]
     
     - parameter id: (path) The bot id. 
     - parameter listId: (form) The list id to attach the bot to. 
     - parameter emailId: (form) The default email to use. 
     - parameter name: (form) The name of the bot. 
     - parameter subject: (form) The subject of the default email. 
     - parameter content: (form) The content used in the default email. 
     - parameter contactFieldValueColumn: (form) The custom field value column with dates for this bot. 
     - parameter templateId: (form) The template used to create the email id. 
     - parameter videoId: (form) The video used in the default email. (optional)
     - parameter endDate: (form) The time frame to complete sending to the list. (optional)
     - parameter status: (form) The status of the bot. (optional)

     - returns: RequestBuilder<PromptBot> 
     */
    public class func updatePromptBotWithRequestBuilder(id id: String, listId: String, emailId: String, name: String, subject: String, content: String, contactFieldValueColumn: String, templateId: String, videoId: String? = nil, endDate: String? = nil, status: String? = nil) -> RequestBuilder<PromptBot> {
        var path = "/prompts/bots/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "listId": listId,
            "emailId": emailId,
            "videoId": videoId,
            "endDate": endDate,
            "status": status,
            "name": name,
            "subject": subject,
            "content": content,
            "contactFieldValueColumn": contactFieldValueColumn,
            "templateId": templateId
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PromptBot>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update Prompt Campaign
     
     - parameter clientGroupId: (form) The client group of the campaign. 
     - parameter brandedTemplateId: (form) The template to use for branded feel emails. (optional)
     - parameter personalTemplateId: (form) The template to use for personal feel emails. (optional)
     - parameter enabled: (form) Set whether the user is able to start receiving prompts. (optional)
     - parameter autoShares: (form) These are what we are autosharing to (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updatePromptCampaign(clientGroupId clientGroupId: String, brandedTemplateId: String? = nil, personalTemplateId: String? = nil, enabled: Bool? = nil, autoShares: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        updatePromptCampaignWithRequestBuilder(clientGroupId: clientGroupId, brandedTemplateId: brandedTemplateId, personalTemplateId: personalTemplateId, enabled: enabled, autoShares: autoShares).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update Prompt Campaign
     - PUT /prompts/campaigns/{id}
     - Updates a Prompt Campaign's Settings
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter clientGroupId: (form) The client group of the campaign. 
     - parameter brandedTemplateId: (form) The template to use for branded feel emails. (optional)
     - parameter personalTemplateId: (form) The template to use for personal feel emails. (optional)
     - parameter enabled: (form) Set whether the user is able to start receiving prompts. (optional)
     - parameter autoShares: (form) These are what we are autosharing to (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updatePromptCampaignWithRequestBuilder(clientGroupId clientGroupId: String, brandedTemplateId: String? = nil, personalTemplateId: String? = nil, enabled: Bool? = nil, autoShares: String? = nil) -> RequestBuilder<Void> {
        let path = "/prompts/campaigns/{id}"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "clientGroupId": clientGroupId,
            "brandedTemplateId": brandedTemplateId,
            "personalTemplateId": personalTemplateId,
            "enabled": enabled,
            "autoShares": autoShares
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
