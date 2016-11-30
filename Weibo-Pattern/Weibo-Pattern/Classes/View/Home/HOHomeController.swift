//
//  HOHomeController.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit

class HOHomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupNavUI()
    }
    
    private func setupNavUI()
    {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign up", target: self, action: #selector(signupButtonAction))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Login", target: self, action: #selector(loginButtonAction))
    }
    
    @objc private func signupButtonAction()
    {
        print("sign up")
    }
    
    @objc private func loginButtonAction()
    {
        print("log in")
    }

}
