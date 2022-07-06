//
//  Router.swift
//  Window
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

protocol Routing {
    func routeToLanding()
    func routeToLogin()
}

class Router: Routing {

    private unowned let window: UIWindow
    private let submodules: Submodules

    typealias Submodules = (
        landingModule: (_ onStart: @escaping () -> Void) -> UIViewController,
        loginModule: () -> UIViewController
    )

    init(window: UIWindow, submodules: Submodules) {
        self.window = window
        self.submodules = submodules
    }
}
extension Router {
    func routeToLanding() {
        let landingModule = self.submodules.landingModule { [weak self] in
            self?.routeToLogin()
        }
        self.window.rootViewController = landingModule
        self.window.makeKeyAndVisible()
    }

    func routeToLogin() {
        let loginModule = self.submodules.loginModule()
        self.window.rootViewController = loginModule
        self.window.makeKeyAndVisible()
    }
    

}
