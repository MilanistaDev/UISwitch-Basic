//
//  ViewController.m
//  UISwitch Basic
//
//  Created by 麻生 拓弥 on 2014/09/04.
//  Copyright (c) 2014年 Takuya Aso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初期化(ここでは OFF, ON は YES)
    _switch1.on = NO;
    
    // switch1 の値取得(YES:1, No:0 -->ここでは 0 のはず)
    BOOL value1 = _switch1.on;
    _FirstStatusLabel.text = [NSString stringWithFormat:@"%d", value1];
    
    // switch1 の値が変更されたら　switch_value_changed を呼ぶ
    [_switch1 addTarget:self action:@selector(switch_value_changed:)
       forControlEvents:UIControlEventValueChanged];
    
    // switch1 の変化を適用
    [self.view addSubview:_switch1];
}

- (IBAction)switch_value_changed:(id)sender {
    
    // switch1 の値の違いによって Status を変える
    if(_switch1.on == YES) {
        _StatusLabel.text = [NSString stringWithFormat:@"Yes"];
    } else {
        _StatusLabel.text = [NSString stringWithFormat:@"No"];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
