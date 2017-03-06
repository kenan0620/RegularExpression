//
//  ViewController.m
//  RegularExpression
//
//  Created by Conan on 2017/2/27.
//  Copyright © 2017年 Conan. All rights reserved.
//

#import "ViewController.h"
#import "ConanRegularExp.h"
#import "NSString+ConanRegularExp.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *RegularStr=@"sdgfsd";
    
 BOOL phoneNum =  [ConanRegularExp ConanRegularExpressionchecking_SpecialChar:RegularStr];
    
     NSLog(@"phoneNum:%@", phoneNum?@"YES":@"NO");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
