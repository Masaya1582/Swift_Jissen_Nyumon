//
//  NSObjectExtension.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import Foundation

// MARK: - Class Name
extension NSObject {
    static var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    var className: String {
        return type(of: self).className
    }
}

// MARK: - Bundle
extension NSObject {
    static var bundle: Bundle {
        return .init(for: self.self)
    }
}
