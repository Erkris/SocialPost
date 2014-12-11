//
//  ViewController.m
//  SocialPost
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *tabPicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tabPicker = @[
                   @[@"dors",@"mange",@"suis en cours", @"galère", @"poireaute"],
                   @[@":)",@";)",@":(",@":O",@"8)",@":D"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundTap:(id)sender {
    [self dismissKeyBoard];
}

-(void) dismissKeyBoard {
    [self.view endEditing:YES];
}

#pragma mark - Picker DataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [_tabPicker[component] count];
}

#pragma mark - UI PickerView Delegate
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [NSString stringWithFormat:@"%@", _tabPicker[component][row]];
}

@end
