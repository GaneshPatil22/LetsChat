//
//  Builder.swift
//  ChatroomLogin
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit
import Utility

public final class Builder {
    public static func build() -> UIViewController {
        let storyboard = UIStoryboard(name: "ChatroomLogin", bundle: Bundle.init(for: self))
        let vc = ChatroomLoginViewController.instaniate(from: storyboard)
        return vc
    }
}
