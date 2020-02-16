//
//  FrontViewController.swift
//  Chaper04-SideBar
//
//  Created by JSMAC on 2020/02/13.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit
class FrontViewController: UIViewController {
    
    @IBOutlet var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let revealVC = self.revealViewController() {
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
}
