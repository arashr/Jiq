//
//  Errors.swift
//  Taskulu
//
//  Created by Arash on 5/14/16.
//  Copyright © 2016 Taskulu. All rights reserved.
//

import Foundation

public enum JiqType: Error {
    case none
    case badRequest
    case badParameters
    case badResponse
    case notFound
    case unknown
}

public class Jiq: CustomStringConvertible {
    public var code: Int = 0
    public var codeName: String = ""
    public var type: JiqType = .none
    public var message: String = ""
    public var error: Error?
    public var component = ""

    public var description: String {
        return "🚨 JIQ:\n__________\nCode: \(code) - \(codeName)\nType:\(type)\nMessage:\(message)\nError\(String(describing: error))\nComponent:\(component)\n__________\n"
    }

    init() {

    }

    convenience public init(code:Int = 0, codeName:String = "", type: JiqType = .unknown, message:String = "") {
        self.init()
        self.code = code
        self.codeName = codeName
        self.message = message
        self.type = type
        self.error = NSError(domain: self.domainName(), code: self.code, userInfo: ["message":self.message])
    }

    // Compatibility init
    convenience public init(_ jerror: Jiq?) {
        self.init()
        guard let jerror = jerror else {
            return
        }
        self.code = jerror.code
        self.codeName = jerror.codeName
        self.message = jerror.message
        self.type = jerror.type
        self.error = jerror.error
    }

    public func print(_ flag:String = "") {
        var output = flag
        if output.isEmpty {
            output = "\(self)"
        }else{
            output = "\(output): \(self)"
        }
        Swift.print(output)
    }

    private func domainName() -> String {
        guard let info = Bundle.main.infoDictionary,
            let identifier = info["CFBundleIdentifier"] as? String else {

                return "com.Jiq"
        }
        return identifier
    }
}
