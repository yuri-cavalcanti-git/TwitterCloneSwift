//
//  ExploreController.swift
//  TwitterTutorial
//
//  Created by Yuri Cavalcanti on 28/04/21.
//

import UIKit

class ExploreController: UIViewController {

    //MARK: - Properties

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers

    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
