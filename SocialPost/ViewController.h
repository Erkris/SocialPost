//
//  ViewController.h
//  SocialPost
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerField;

@end

