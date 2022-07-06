//
//  Builder.swift
//  Window
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit
import Landing
import ChatroomLogin

public final class Builder {
    public static func build(windowScene: UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let landingModule = Landing.Builder.build
        let loginModule = ChatroomLogin.Builder.build
        let router = Router(
            window: window,
            submodules: (
                landingModule: landingModule,
                loginModule: loginModule
            ))
        let prenseter = Presenter(router: router)
        window.presenter = prenseter
        return window
    }
}
