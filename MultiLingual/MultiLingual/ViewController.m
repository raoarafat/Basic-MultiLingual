//
//  ViewController.m
//  MultiLingual
//
//  Created by Arafat on 9/10/15.
//  Copyright (c) 2015 Arafat Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIButton *likeButton;
@property (nonatomic, weak) IBOutlet UILabel *salesCountLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *numberString = [numberFormatter stringFromNumber:@(1000000)];
    _salesCountLabel.text = [NSString stringWithFormat:NSLocalizedString(@"Yesterday you sold %@ apps", nil), numberString];
    
    [_likeButton setTitle:NSLocalizedString(@"You like?", nil) forState:UIControlStateNormal];
    [_imageView setImage:[UIImage imageNamed:NSLocalizedString(@"imageName", nil)]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
