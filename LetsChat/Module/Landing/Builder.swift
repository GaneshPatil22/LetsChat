//
//  Builder.swift
//  Landing
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit
import Utility

public final class Builder {
    public static func build(completion: @escaping () -> Void) -> UIViewController {
        let storyboard = UIStoryboard(name: "Landing", bundle: Bundle.init(for: self))
        let vc = LandingViewController.instaniate(from: storyboard)
        vc.onStart = completion
        return vc
    }
}
