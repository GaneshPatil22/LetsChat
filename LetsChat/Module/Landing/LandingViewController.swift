//
//  LandingViewController.swift
//  Landing
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

class LandingViewController: UIViewController {
    @IBOutlet weak var landingImageView: UIImageView!

    var onStart: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    @IBAction func startBtnTapped(_ sender: Any) {
        onStart?()
    }

}

extension LandingViewController {
    private func setUpUI() {

    }
}
