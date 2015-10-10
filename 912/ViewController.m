//
//  ViewController.m
//  912
//
//  Created by Arron on 10/11/15.
//  Copyright (c) 2015 Arron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    label= [[UILabel alloc]init];
    label.frame=self.view.bounds;
    label.autoresizingMask=
    UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
    label.text=@"0.5";
    label.font=[UIFont boldSystemFontOfSize:36];
    label.textAlignment= NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
    UISlider* slider=[[UISlider alloc]init];
    
    slider.frame=CGRectMake(0, 0, 250, 50);
    slider.minimumValue=0.0;
    slider.maximumValue=1.0;
    slider.value=0.5;
    slider.center=self.view.center;
    [slider addTarget:self action:@selector(sliderDidChange:) forControlEvents:(UIControlEventValueChanged)];
    [self.view addSubview:slider];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sliderDidChange:(id)sender{
    if([sender isKindOfClass:[UISlider class]]){
        UISlider* slider=sender;
        label.text=[NSString stringWithFormat:@"%0.1f",slider.value];
    }
}

@end
