//
//  ViewController.h
//  UISwitch Basic
//
//  Created by 麻生 拓弥 on 2014/09/04.
//  Copyright (c) 2014年 Takuya Aso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *FirstStatusLabel;
@property (weak, nonatomic) IBOutlet UILabel *StatusLabel;

@property (weak, nonatomic) IBOutlet UISwitch *switch1;
- (IBAction)switch_value_changed:(id)sender;

@end

