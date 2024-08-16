//
//  Egg.swift
//  Pods
//
//  Created by 王叶庆 on 2022/3/12.
//

import Foundation

public struct Egg: Error, LocalizedError, CustomStringConvertible, CustomDebugStringConvertible {
    let message: String?
    let code: Int?

    public var debugDescription: String {
        var string: String = ""
        if let code = code {
            string += "code:\(code)"
        }
        if let message = message {
            string += string.isEmpty ? "message:" : " message:"
            string += message
        }
        return string.isEmpty ? "未知错误" : string
    }

    public var description: String {
        if let message = message {
            return message
        }
        if let code = code {
            return "code:\(code)"
        }
        return "未知错误"
    }

    public var errorDescription: String? {
        return description
    }

    public init(_ code: Int? = nil, message: String? = nil) {
        self.code = code
        self.message = message
    }

    public init(_ message: String? = nil) {
        self.init(nil, message: message)
    }
}
