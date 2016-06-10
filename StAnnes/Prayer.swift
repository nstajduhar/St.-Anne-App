//
//  Prayer.swift
//  StAnnes
//
//  Created by Nicholas Stajduhar on 5/17/16.
//  Copyright (c) 2015 St.Anne CHS. All rights reserved.
//

import UIKit

class Prayer: UIViewController {
    //Defining the menu button
    @IBOutlet weak var menuButton:UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Reveals the slide out menu, sets the menu buttons action to reveal the controller
        //This code is manditory if you want the slide out menu to work, duplicate any view and remove all references and actions and clear the storyboard or make a new one from scratch, use a bar button to add the menu button if needed
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
