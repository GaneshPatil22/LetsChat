//
//  UIViewController+Extenstion.swift
//  Utility
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

public extension UIViewController {
    class func instaniate<T: UIViewController>(from storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }

    class func instaniate(from storyboard: UIStoryboard) -> Self {
        return instaniate(from: storyboard, identifier: String(describing: self))
    }

    class func instaniate() -> Self {
        let className = String(describing: self)
        return instaniate(from: UIStoryboard(name: className, bundle: Bundle(for: self)), identifier: className)
    }
}
