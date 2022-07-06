//
//  Window.swift
//  Window
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

class Window: UIWindow {

    var presenter: Presentation?

    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
