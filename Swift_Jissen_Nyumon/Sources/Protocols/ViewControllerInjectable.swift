//
//  ViewControllerInjectable.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import UIKit

protocol ViewControllerInjectable: UIViewController {
    associatedtype Dependency

    init(dependency: Dependency)
}

extension ViewControllerInjectable where Dependency == Void {
    init(dependency: Dependency = ()) {
        self.init(dependency: dependency)
    }
}
