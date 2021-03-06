//
// PromptMonthlyPerformance.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The PromptMonthlyPerformance class */
public class PromptMonthlyPerformance: JSONEncodable {
    /** The startDate property */
    public var startDate: String?
    /** The endDate property */
    public var endDate: String?
    /** The userBatchListsIdHelper property */
    public var userBatchListsIdHelper: String?
    /** The promptIdHelper property */
    public var promptIdHelper: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["startDate"] = self.startDate
        nillableDictionary["endDate"] = self.endDate
        nillableDictionary["userBatchListsIdHelper"] = self.userBatchListsIdHelper
        nillableDictionary["promptIdHelper"] = self.promptIdHelper
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
