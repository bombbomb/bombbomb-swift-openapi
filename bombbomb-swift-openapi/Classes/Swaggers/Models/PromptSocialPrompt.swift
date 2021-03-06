//
// PromptSocialPrompt.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Prompt\\SocialPrompt class */
public class PromptSocialPrompt: JSONEncodable {
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
