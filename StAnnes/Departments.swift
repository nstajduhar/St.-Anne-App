//
//  Departments.swift
//  StAnnes
//
//  Created by Nicholas Stajduhar on 6/6/16.
//  Copyright (c) 2015 St.Anne CHS. All rights reserved.
//

import UIKit

class Departments: UIViewController {
    
    
//Defining all Webviews for each department
    @IBOutlet weak var arts: UIWebView?
    @IBOutlet weak var business: UIWebView?
    @IBOutlet weak var catholicstudies: UIWebView?
    @IBOutlet weak var english: UIWebView?
    @IBOutlet weak var administration: UIWebView?
    @IBOutlet weak var tech: UIWebView?
    @IBOutlet weak var physed: UIWebView?
    @IBOutlet weak var modernlang: UIWebView?
    @IBOutlet weak var math: UIWebView?
    @IBOutlet weak var guidance: UIWebView?
    @IBOutlet weak var science: UIWebView?
    @IBOutlet weak var socialscience: UIWebView?
    @IBOutlet weak var speced: UIWebView?
    @IBOutlet weak var studentsuc: UIWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//Setting URLs for each Webview
        //Administration
        let admin = NSURL(string: "http://sahnews.blogspot.ca")
        let requestObj = NSURLRequest(URL: admin!);
        administration?.loadRequest(requestObj);
        //Arts
        let art = NSURL(string: "http://saharts.blogspot.ca")
        let requestObj1 = NSURLRequest(URL: art!);
        arts?.loadRequest(requestObj1);
        //Business
        let businessdept = NSURL(string: "http://sahbusiness.blogspot.ca")
        let requestObj2 = NSURLRequest(URL: businessdept!);
        business?.loadRequest(requestObj2);
        //Catholic Studies
        let cathstud = NSURL(string: "http://sahreligion.blogspot.ca")
        let requestObj3 = NSURLRequest(URL: cathstud!);
        catholicstudies?.loadRequest(requestObj3);
        //English
        let eng = NSURL(string: "http://sahenglish.blogspot.ca")
        let requestObj4 = NSURLRequest(URL: eng!);
        english?.loadRequest(requestObj4);
        //Technology
        let technology = NSURL(string: "http://sahtechdept.blogspot.ca")
        let requestObj5 = NSURLRequest(URL: technology!);
        tech?.loadRequest(requestObj5);
        //PhysEd
        let phys = NSURL(string: "http://saintannesaintsathletics.blogspot.ca")
        let requestObj6 = NSURLRequest(URL: phys!);
        physed?.loadRequest(requestObj6);
        //Modern Languages
        let modern = NSURL(string: "http://sahlanguage.blogspot.ca")
        let requestObj7 = NSURLRequest(URL: modern!);
        modernlang?.loadRequest(requestObj7);
        //Mathamatics
        let mathamatics = NSURL(string: "http://sahmathdept.blogspot.ca")
        let requestObj8 = NSURLRequest(URL: mathamatics!);
        math?.loadRequest(requestObj8);
        //Guidance
        let guide = NSURL(string: "https://sites.google.com/site/sahguidance/")
        let requestObj9 = NSURLRequest(URL: guide!);
        guidance?.loadRequest(requestObj9);
        //Science
        let sciencedept = NSURL(string: "http://sahsciencedept.blogspot.ca")
        let requestObj10 = NSURLRequest(URL: sciencedept!);
        science?.loadRequest(requestObj10);
        //Social Sciences
        let social = NSURL(string: "http://sahsocial.blogspot.ca")
        let requestObj11 = NSURLRequest(URL: social!);
        socialscience?.loadRequest(requestObj11);
        //Special Education
        let special = NSURL(string: "http://stannels.blogspot.ca")
        let requestObj12 = NSURLRequest(URL: special!);
        speced?.loadRequest(requestObj12);
        //Student Success
        let student = NSURL(string: "http://stannessn.blogspot.ca")
        let requestObj13 = NSURLRequest(URL: student!);
        studentsuc?.loadRequest(requestObj13);
 
    
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
