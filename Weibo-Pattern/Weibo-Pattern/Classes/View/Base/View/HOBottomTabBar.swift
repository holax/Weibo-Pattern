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


class HOBottomTabBar: UITabBar
{
    var callBack: (() -> ())?
    
    weak var HODelegate: HOTabBarDelegate?
    
    private lazy var composeButton: UIButton =
    {
        let button = UIButton()
        button.addTarget(self, action: #selector(composeButtonAction), for: .touchUpInside)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: .normal)
        button.setBackgroundImage(UIImage.init(named: "tabbar_compose_button_highlighted"), for: .highlighted)
        button.setImage(UIImage.init(named: "tabbar_compose_icon_add"), for: .normal)
        button.setImage(UIImage.init(named: "tabbar_compose_icon_add_highlighted"), for: .highlighted)
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
        backgroundImage = UIImage.init(named: "tabbar_background")
        addSubview(composeButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        composeButton.centerX = width / 2
        composeButton.centerY = height / 2
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
