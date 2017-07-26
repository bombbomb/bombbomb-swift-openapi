//
// VideoEmailPrompt.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Configures a single prompt which asks a user to record a video into an outgoing email. */
public class VideoEmailPrompt: JSONEncodable {
    /** The identifier of the prompt. Read Only. */
    public var id: String?
    /** The prompt&#39;s owner. Read Only. */
    public var userId: String?
    /** Optional. The email template to be used in the sent email, if none supplied, the users&#39; default will be applied. */
    public var templateId: String?
    /** The subject line of the final email */
    public var emailSubjectLine: String?
    /** The HTML content of the final email */
    public var emailContent: String?
    /** The URL of a thumbnail image for this prompt */
    public var thumbnailUrl: String?
    /** Contact Id to send the final email to */
    public var contactId: String?
    /** List Ids to send the final email to */
    public var toLists: [String]?
    /** If sent in a jericho context, this will have the jericho id */
    public var jerichoId: String?
    /** The prompt&#39;s subject line */
    public var promptSubject: String?
    /** The suggested script of the prompt. */
    public var promptHtml: String?
    /** A paragraph intro statement about the purpose of the email you&#39;re recording a video for. */
    public var promptIntro: String?
    /** An example or explanatory video to help the user understand what to say. */
    public var exampleVideoId: String?
    /** An example or explanatory video to help the user understand what to say. */
    public var followupVideoId: String?
    /** Whether to send the email if no video is recorded. If set to require a video, and none is added before the videoDueDate, the prompt is cancelled. */
    public var sendWithoutVideo: Bool?
    /** When the video must be recorded by */
    public var videoDueDate: NSDate?
    /** When the final email is scheduled to be sent */
    public var scheduledSendDate: NSDate?
    /** The video that was added to the prompt. Read Only. */
    public var videoId: String?
    /** The email that was created by the prompt Read Only. */
    public var emailId: String?
    /** The job sent by the prompt Read Only. */
    public var jobId: String?
    /** The bot that created the prompt. */
    public var promptBotId: String?
    /** The client group campaign that created the prompt. */
    public var clientGroupId: String?
    /** The status of the prompt: created &#x3D; 0, sent &#x3D; 10, recorded &#x3D; 20, job_created &#x3D; 30, timed_out &#x3D; 40, declined &#x3D; 50 Read Only */
    public var status: Int32?
    /** Controls whether a user template is applied to the message as it is sent */
    public var applyTemplate: Bool?
    /** When the email was first sent out */
    public var createdDate: NSDate?
    /** When the user was last notified about a prompt email waiting for a video */
    public var lastNotified: NSDate?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["userId"] = self.userId
        nillableDictionary["templateId"] = self.templateId
        nillableDictionary["emailSubjectLine"] = self.emailSubjectLine
        nillableDictionary["emailContent"] = self.emailContent
        nillableDictionary["thumbnailUrl"] = self.thumbnailUrl
        nillableDictionary["contactId"] = self.contactId
        nillableDictionary["toLists"] = self.toLists?.encodeToJSON()
        nillableDictionary["jerichoId"] = self.jerichoId
        nillableDictionary["promptSubject"] = self.promptSubject
        nillableDictionary["promptHtml"] = self.promptHtml
        nillableDictionary["promptIntro"] = self.promptIntro
        nillableDictionary["exampleVideoId"] = self.exampleVideoId
        nillableDictionary["followupVideoId"] = self.followupVideoId
        nillableDictionary["sendWithoutVideo"] = self.sendWithoutVideo
        nillableDictionary["videoDueDate"] = self.videoDueDate?.encodeToJSON()
        nillableDictionary["scheduledSendDate"] = self.scheduledSendDate?.encodeToJSON()
        nillableDictionary["videoId"] = self.videoId
        nillableDictionary["emailId"] = self.emailId
        nillableDictionary["jobId"] = self.jobId
        nillableDictionary["promptBotId"] = self.promptBotId
        nillableDictionary["clientGroupId"] = self.clientGroupId
        nillableDictionary["status"] = self.status?.encodeToJSON()
        nillableDictionary["applyTemplate"] = self.applyTemplate
        nillableDictionary["createdDate"] = self.createdDate?.encodeToJSON()
        nillableDictionary["lastNotified"] = self.lastNotified?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
