//
// JerichoPerformance.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Reports on the aggregate performance of a Jericho send */
public class JerichoPerformance: JSONEncodable {
    /** The number of emails sent */
    public var sent: Int32?
    /** The unique number of people that viewed the email */
    public var uniqueViews: Int32?
    /** The unique number of people that visited the landing page */
    public var uniqueLandingPageViews: Int32?
    /** The total number of people that visisted the landing page */
    public var landingPageViews: Int32?
    /** The number of emails delivered, likely less than sent due to bounces, and other common delivery issues */
    public var delivered: Int32?
    /** The number of emails that bounced as undeliverable */
    public var bounce: Int32?
    /** The total number of times the emails were viewed */
    public var open: Int32?
    /** The total number of times links in the emails were clicked */
    public var click: Int32?
    /** The total number of times videos in the emails were played */
    public var videoPlay: Int32?
    /** The number of recipients that marked the message as abusive */
    public var abuseComplaints: Int32?
    /** The total number of contacts submitted to be sent, may be more than was sent to */
    public var contacts: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["sent"] = self.sent?.encodeToJSON()
        nillableDictionary["uniqueViews"] = self.uniqueViews?.encodeToJSON()
        nillableDictionary["uniqueLandingPageViews"] = self.uniqueLandingPageViews?.encodeToJSON()
        nillableDictionary["landingPageViews"] = self.landingPageViews?.encodeToJSON()
        nillableDictionary["delivered"] = self.delivered?.encodeToJSON()
        nillableDictionary["bounce"] = self.bounce?.encodeToJSON()
        nillableDictionary["open"] = self.open?.encodeToJSON()
        nillableDictionary["click"] = self.click?.encodeToJSON()
        nillableDictionary["videoPlay"] = self.videoPlay?.encodeToJSON()
        nillableDictionary["abuseComplaints"] = self.abuseComplaints?.encodeToJSON()
        nillableDictionary["contacts"] = self.contacts?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}