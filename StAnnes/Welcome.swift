//
//  Welcome.swift
//  StAnnes
//
//  Created by Nicholas Stajduhar on 5/17/16.
//  Copyright (c) 2015 St.Anne CHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Defining the menu button, extra button (Currently inactave but can be set up), and defines the Webview on the welcome page
    @IBOutlet var menuButton:UIBarButtonItem!
    @IBOutlet var extraButton:UIBarButtonItem!
    @IBOutlet weak var mainWebview: UIWebView?
    @IBOutlet weak var principalblog: UIWebView?
 

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Reveals the slide out menu, sets the menu buttons action to reveal the controller
        //This code is manditory if you want the slide out menu to work, duplicate any view and remove all references and actions and clear the storyboard or make a new one from scratch, use a bar button to add the menu button if needed
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        //Sets the URL for the welcome webview
        let main = NSURL(string: "http://www.saintannesaints.com")
        let requestObj = NSURLRequest(URL: main!);
        mainWebview?.loadRequest(requestObj);
        
        let principal = NSURL(string: "http://sahnews.blogspot.ca")
        let requestObj1 = NSURLRequest(URL: principal!);
        principalblog?.loadRequest(requestObj1);
        
        /* HTML in UIWebView
        let main = NSURL(fileURLWithPath: "yourfile.html")
        let request = NSURLRequest(URL: main!)
        mainWebview.loadRequest(request)
 
        */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
