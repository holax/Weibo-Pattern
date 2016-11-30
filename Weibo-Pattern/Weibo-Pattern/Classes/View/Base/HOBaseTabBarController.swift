//
//  ViewController.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit

class HOBaseTabBarController: UITabBarController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let HOTabBar = HOCommonTabBar()
        
        HOTabBar.HODelegate = self
        
        HOTabBar.callBack =
        {
            [weak self] in
            print(self!)
        }
        
        
        
        
        
        addChildViewController(childController: HOHomeController(), imageName: "tabbar_home", title: "Home")
        addChildViewController(childController: HOMessageController(), imageName: "tabbar_message_center", title: "Message")
        addChildViewController(childController: HODiscoverController(), imageName: "tabbar_discover", title: "Discover")
        addChildViewController(childController: HOProfileController(), imageName: "tabbar_profile", title: "Profile")
    }
    
    
    func addChildViewController(childController: UIViewController, imageName: String, title: String)
    {
        childController.tabBarItem.image = UIImage.init(named: imageName)
        childController.tabBarItem.selectedImage = UIImage.init(named: imageName + "_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: UIControlState.selected)
        childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 12)], for: UIControlState.normal)
        childController.title = title
        addChildViewController(HONavigationController(rootViewController: childController))
    }

}


extension HOBaseTabBarController: HOTabBarDelegate
{
    func didSelectedComposeButton() {
        print("代理对象调用过来的")
    }
}

