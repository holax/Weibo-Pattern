//
//  UIBarButtonItem+Extension.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit


extension UIBarButtonItem
{
    convenience init(title: String, imageName: String? = nil, target: Any?, action: Selector)
    {
        self.init()
        
        let button = UIButton()
        button.addTarget(target, action: action, for: .touchUpInside)
        button.setTitle(title, for: .normal)
        if imageName != nil
        {
            button.setImage(UIImage.init(named: imageName!), for: .normal)
        }
        
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.sizeToFit()
        
        customView = button
    }
}
