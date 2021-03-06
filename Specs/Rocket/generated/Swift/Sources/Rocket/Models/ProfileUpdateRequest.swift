//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class ProfileUpdateRequest: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The unique name of the profile. */
    public var name: String?

    /** Whether an account pin is required to enter the profile.

If no account pin is defined this has no impact.
 */
    public var pinEnabled: Bool?

    /** Whether the profile can make purchases with the account payment options. */
    public var purchaseEnabled: Bool?

    /** The segments a profile should be placed under */
    public var segments: [String]?

    public init(name: String? = nil, pinEnabled: Bool? = nil, purchaseEnabled: Bool? = nil, segments: [String]? = nil) {
        self.name = name
        self.pinEnabled = pinEnabled
        self.purchaseEnabled = purchaseEnabled
        self.segments = segments
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        name = jsonDictionary.json(atKeyPath: "name")
        pinEnabled = jsonDictionary.json(atKeyPath: "pinEnabled")
        purchaseEnabled = jsonDictionary.json(atKeyPath: "purchaseEnabled")
        segments = jsonDictionary.json(atKeyPath: "segments")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let name = name {
            dictionary["name"] = name
        }
        if let pinEnabled = pinEnabled {
            dictionary["pinEnabled"] = pinEnabled
        }
        if let purchaseEnabled = purchaseEnabled {
            dictionary["purchaseEnabled"] = purchaseEnabled
        }
        if let segments = segments {
            dictionary["segments"] = segments
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
