//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by Yuri Cavalcanti on 28/04/21.
//

import UIKit

class MainTabController: UITabBarController {

    //MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureViewControllers()
    }
    
    //MARK: - Selectors
    
    @objc func actionButtonTapped() {
        print("ActionButton Tapped")
    }

    
    //MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    func configureViewControllers() {
        let feed = FeedController()
        let navigationFeed = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        let explorer = ExploreController()
        let navigationExplorer = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explorer)
        
        let notification = NotificationsController()
        let navigationNotification = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notification)
        
        let conversations = ConversationsController()
        let navigationConversations = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        // injetar as ViewControllers na TabBar
        viewControllers = [navigationFeed, navigationExplorer, navigationNotification, navigationConversations]
        
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: rootViewController)
        navigation.tabBarItem.image = image
        navigation.navigationBar.barTintColor = .white
        return navigation
    }
}
