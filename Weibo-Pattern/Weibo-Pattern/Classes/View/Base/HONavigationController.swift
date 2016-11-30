//
//  HONavigationController.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit

class HONavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        interactivePopGestureRecognizer?.delegate = self
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        print(viewControllers.count)
        
        if viewControllers.count > 0
        {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
        
        if viewControllers.count > 1
        {
            if viewControllers.count == 2
            {
                let title = viewControllers.first!.title!
                
                viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: title, imageName: "navigationbar_back_withtext", target: self, action: #selector(popAction))
            }
            else
            {
                viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", imageName: "navigationbar_back_withtext", target: self, action: #selector(popAction))
            }
            viewController.title = "当前显示的是第\(viewControllers.count)级控制器"
        }
    }
    
    @objc private func popAction()
    {
        popViewController(animated: true)
    }

}


extension HONavigationController: UIGestureRecognizerDelegate
{
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if viewControllers.count == 1
        {
            return false
        }
        
        return true
    }
}
