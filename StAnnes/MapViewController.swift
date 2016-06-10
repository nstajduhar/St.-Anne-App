//
//  MapViewController.swift
//  StAnnes
//
//  Created by Nicholas Stajduhar on 5/17/16.
//  Copyright (c) 2015 St.Anne CHS. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class MapViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    //Defining the menu button, extra button (Currently inactave but can be set up), and defines the Webview on the welcome page

    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //Reveals the slide out menu, sets the menu buttons action to reveal the controller
        //This code is manditory if you want the slide out menu to work, duplicate any view and remove all references and actions and clear the storyboard or make a new one from scratch, use a bar button to add the menu button if needed
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        //Set initial location
        let initialLocation = CLLocation(latitude: 42.289394, longitude:  -82.765516)
        //Setting Radius of the map
        let regionRadius: CLLocationDistance = 200
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
     centerMapOnLocation(initialLocation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Setting up what the first button should do, it sets it to call the phone number 519-727-4497
    @IBAction func MakeCall1(sender: AnyObject){
        var url:NSURL = NSURL(string: "tel://5197274497")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    //Setting up what the second button should do, it sets it to call the phone number 519-727-8908
    @IBAction func MakeCall2(sender: AnyObject){
        var url1:NSURL = NSURL(string: "tel://5197278908")!
        UIApplication.sharedApplication().openURL(url1)
    }
    
    
    //Defining the button to email the school
    @IBAction func sendEmailButtonTapped(sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        //Setting the email to send too
        mailComposerVC.setToRecipients(["stannehs@gmail.com"])
        //Setting a subject (Usually leave as ("") to leave the subject blank so the user can set their own subject or you can set it to = nil
        mailComposerVC.setSubject("")
        //Sets the body message leave as ("") as well or set to nil and always keep HTML to true
        mailComposerVC.setMessageBody("", isHTML: true)
        
        return mailComposerVC
    }
    //Setting the error code if the message fails to send
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
   
    // MARK: MFMailComposeViewControllerDelegate
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        
    }
}



