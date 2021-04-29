//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by Yuri Cavalcanti on 28/04/21.
//

import UIKit

class MainTabController: UITabBarController {

    //MARK: - Properties
    
    

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    //MARK: - Helpers
    
    func configureViewControllers() {
        let feed = FeedController()
        let navigationFeed = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        let explorer = ExploreController()
        let navigationExplorer = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explorer)
        
        let notification = NotificationsController()
        let navigationNotification = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notification)
        
        let conversations = ConversationsController()
        let navigationConversations = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        // incluir as ViewControllers na TabBar
        viewControllers = [navigationFeed, navigationExplorer, navigationNotification, navigationConversations]
        
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: rootViewController)
        navigation.tabBarItem.image = image
        navigation.navigationBar.barTintColor = .white
        return navigation
    }
}
