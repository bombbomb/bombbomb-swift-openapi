//
// VideoEmailPrompt.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Configures a single prompt which asks a user to record a video into an outgoing email. */
public class VideoEmailPrompt: JSONEncodable {
    /** Optional. The email template to be used in the sent email, if none supplied, the users&#39; default will be applied. */
    public var templateId: String?
    /** The subject line of the final email */
    public var emailSubjectLine: String?
    /** The HTML content of the final email */
    public var emailContent: String?
    /** Contact Id to send the final email to */
    public var contactId: String?
    /** List Ids to send the final email to */
    public var toLists: [String]?
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
    /** The video that was added to the prompt. Read Only. */
    public var videoId: String?
    /** The email that was created by the prompt Read Only. */
    public var emailId: String?
    /** The job sent by the prompt Read Only. */
    public var jobId: String?
    /** The bot that created the prompt. */
    public var promptBotId: String?
    /** Controls whether a user template is applied to the message as it is sent */
    public var applyTemplate: Bool?
    /** The facebook message to be passed off to social sender */
    public var facebookMessage: String?
    /** The twitter message to be passed off to social sender */
    public var twitterMessage: String?
    /** The linkedin message to be passed off to social sender */
    public var linkedinMessage: String?
    /** The id for the alternate content id */
    public var alternateContentId: String?
    /** The identifier of the prompt. Read Only. */
    public var id: String?
    /** The prompt&#39;s owner. Read Only. */
    public var userId: String?
    /** If sent in a jericho context, this will have the jericho id */
    public var jerichoId: String?
    /** The prompt&#39;s subject line */
    public var promptSubject: String?
    /** The suggested script of the prompt. */
    public var promptHtml: String?
    /** When the final email is scheduled to be sent */
    public var scheduledSendDate: NSDate?
    /** The client group campaign that created the prompt. */
    public var clientGroupId: String?
    /** The URL of a thumbnail image for this prompt */
    public var thumbnailUrl: String?
    /** The status of the prompt: created &#x3D; 0, sent &#x3D; 10, recorded &#x3D; 20, job_created &#x3D; 30, timed_out &#x3D; 40, declined &#x3D; 50 Read Only */
    public var status: Int32?
    /** When the email was first sent out */
    public var createdDate: NSDate?
    /** When the user was last notified about a prompt email waiting for a video */
    public var lastNotified: NSDate?
    /** The sendMechanism property */
    public var sendMechanism: NSDate?
    /** The types of mechanisms this prompt can send. */
    public var sendTypes: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["templateId"] = self.templateId
        nillableDictionary["emailSubjectLine"] = self.emailSubjectLine
        nillableDictionary["emailContent"] = self.emailContent
        nillableDictionary["contactId"] = self.contactId
        nillableDictionary["toLists"] = self.toLists?.encodeToJSON()
        nillableDictionary["promptIntro"] = self.promptIntro
        nillableDictionary["exampleVideoId"] = self.exampleVideoId
        nillableDictionary["followupVideoId"] = self.followupVideoId
        nillableDictionary["sendWithoutVideo"] = self.sendWithoutVideo
        nillableDictionary["videoDueDate"] = self.videoDueDate?.encodeToJSON()
        nillableDictionary["videoId"] = self.videoId
        nillableDictionary["emailId"] = self.emailId
        nillableDictionary["jobId"] = self.jobId
        nillableDictionary["promptBotId"] = self.promptBotId
        nillableDictionary["applyTemplate"] = self.applyTemplate
        nillableDictionary["facebookMessage"] = self.facebookMessage
        nillableDictionary["twitterMessage"] = self.twitterMessage
        nillableDictionary["linkedinMessage"] = self.linkedinMessage
        nillableDictionary["alternateContentId"] = self.alternateContentId
        nillableDictionary["id"] = self.id
        nillableDictionary["userId"] = self.userId
        nillableDictionary["jerichoId"] = self.jerichoId
        nillableDictionary["promptSubject"] = self.promptSubject
        nillableDictionary["promptHtml"] = self.promptHtml
        nillableDictionary["scheduledSendDate"] = self.scheduledSendDate?.encodeToJSON()
        nillableDictionary["clientGroupId"] = self.clientGroupId
        nillableDictionary["thumbnailUrl"] = self.thumbnailUrl
        nillableDictionary["status"] = self.status?.encodeToJSON()
        nillableDictionary["createdDate"] = self.createdDate?.encodeToJSON()
        nillableDictionary["lastNotified"] = self.lastNotified?.encodeToJSON()
        nillableDictionary["sendMechanism"] = self.sendMechanism?.encodeToJSON()
        nillableDictionary["sendTypes"] = self.sendTypes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
