//
//  ChatroomLoginViewController.swift
//  ChatroomLogin
//
//  Created by Patil, Ganesh on 06/07/22.
//

import UIKit

class ChatroomLoginViewController: UIViewController {

    @IBOutlet weak var avtarImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUi()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtnAction(_ sender: Any) {
    }
}

extension ChatroomLoginViewController {
    private func setupUi() {
        avtarImageView.image = UIImage(named: "defaultAvatar", in: Bundle.init(for: ChatroomLoginViewController.self), with: nil)
    }
}
