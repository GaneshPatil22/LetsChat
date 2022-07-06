//
//  Builder.swift
//  Landing
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit
import Utility

public final class Builder {
    public static func build() -> UIViewController {
        let storyboard = UIStoryboard(name: "Landing", bundle: Bundle.init(for: self))
        let vc = LandingViewController.instaniate(from: storyboard)
        return vc
    }
}
