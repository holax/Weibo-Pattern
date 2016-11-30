//
//  HOTabBar.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit

protocol HOTabBarDelegate: NSObjectProtocol
{
    func didSelectedComposeButton()
}


class HOCommonTabBar: UITabBar
{
    var callBack: (() -> ())?
    
    weak var HODelegate: HOTabBarDelegate?
    
    private lazy var composeButton: UIButton =
    {
        let button = UIButton()
        button.addTarget(self, action: #selector(composeButtonAction), for: UIControlEvents.touchUpInside)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: UIControlState.normal)
        button.setBackgroundImage(UIImage.init(named: "tabbar_compose_button_highlighted"), for: UIControlState.highlighted)
        button.setImage(UIImage.init(named: "tabbar_compose_icon_add"), for: UIControlState.normal)
        button.setImage(UIImage.init(named: "tabbar_compose_icon_add_highlighted"), for: UIControlState.highlighted)
        button.sizeToFit()
        return button
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI()
    {
        addSubview(composeButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        composeButton.center = self.center
        let buttonWidth = width / 5
        
        var index = 0
        
        for childView in subviews
        {
            if childView.isKind(of: NSClassFromString("UITabBarButton")!)
            {
                childView.width = buttonWidth
                childView.x = CGFloat(index) * buttonWidth
                index += 1
                
                if index == 2
                {
                    index += 1
                }
            }
        }
        
    }
    
    
    @objc private func composeButtonAction()
    {
        callBack?()
        HODelegate?.didSelectedComposeButton()
    }
    
    

}
