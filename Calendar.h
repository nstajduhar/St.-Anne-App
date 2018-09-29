//
//  Calendar.h
//  St. Annes
//
//  Created by Student on 2016-06-14.
//  Copyright © 2016 StAnnes. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GTMOAuth2Authentication.h"
#import "GTLCalendar.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) GTLServiceCalendar *service;
@property (nonatomic, strong) UITextView *output;

@end
