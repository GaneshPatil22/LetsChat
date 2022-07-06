//
//  Presenter.swift
//  Window
//
//  Created by Patil, Ganesh on 06/07/22.
//

import Foundation

protocol Presentation {

}

class Presenter: Presentation  {


    private let router: Routing

    init(router: Routing) {
        self.router = router
        self.process()
    }

    func process() {
        self.router.routeToLanding() 
    }
}
