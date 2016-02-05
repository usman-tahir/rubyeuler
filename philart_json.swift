#!/usr/bin/env swift

import Foundation

func getPhilartJSON() -> NSData {
    let url = "http://www.philart.net/api/art.json"
    return NSData(contentsOfURL: NSURL(string: url)!)!
}

func dataToJSON(data: NSData) -> NSDictionary? {
    do {
        let artDict = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as? NSDictionary
        return artDict
    } catch {
        return nil
    }
}

print(dataToJSON(getPhilartJSON()))