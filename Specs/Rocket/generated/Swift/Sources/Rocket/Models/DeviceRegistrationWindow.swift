//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class DeviceRegistrationWindow: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The number of days a de/registration period runs for. */
    public var periodDays: Int

    /** The maximum de/registrations that can be made in a period. */
    public var limit: Int

    /** The remaining de/registrations that can be made in the current period. */
    public var remaining: Int

    /** The start date of the current period.

This is based on the earliest device de/registrations in the past N days, where
N is defined by `periodDays`.

If no device has been de/registered then start date will be from the current date.
 */
    public var startDate: Date

    /** The end date of the current period.

This is based on the value of `startDate` plus the number of days defined by  `periodDays`.
 */
    public var endDate: Date

    public init(periodDays: Int, limit: Int, remaining: Int, startDate: Date, endDate: Date) {
        self.periodDays = periodDays
        self.limit = limit
        self.remaining = remaining
        self.startDate = startDate
        self.endDate = endDate
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        periodDays = try jsonDictionary.json(atKeyPath: "periodDays")
        limit = try jsonDictionary.json(atKeyPath: "limit")
        remaining = try jsonDictionary.json(atKeyPath: "remaining")
        startDate = try jsonDictionary.json(atKeyPath: "startDate")
        endDate = try jsonDictionary.json(atKeyPath: "endDate")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["periodDays"] = periodDays
        dictionary["limit"] = limit
        dictionary["remaining"] = remaining
        dictionary["startDate"] = startDate.encode()
        dictionary["endDate"] = endDate.encode()
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}