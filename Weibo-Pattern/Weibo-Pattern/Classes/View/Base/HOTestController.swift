//
//  HOTestController.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit

class HOTestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: CGFloat(arc4random() % 256) / 255.0, green: CGFloat(arc4random() % 256) / 255.0, blue: CGFloat(arc4random() % 256) / 255.0, alpha: 1)
        setupUI()
    }
    
    private func setupUI()
    {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Push", target: self, action: #selector(pushAction))
    }
    
    @objc private func pushAction()
    {
        navigationController?.pushViewController(HOTestController(), animated: true)
    }


}
