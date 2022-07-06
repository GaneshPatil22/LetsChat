//
//  Router.swift
//  Window
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

protocol Routing {
    func routeToLanding()
}

class Router: Routing {

    private unowned let window: UIWindow
    private let submodules: Submodules

    typealias Submodules = (
        landingModule: () -> UIViewController, ()
    )

    init(window: UIWindow, submodules: Submodules) {
        self.window = window
        self.submodules = submodules
    }

    func routeToLanding() {
        let landingModule = self.submodules.landingModule() 
        self.window.rootViewController = landingModule
        self.window.makeKeyAndVisible()
    }
    

}
