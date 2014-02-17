//
//  ScanQRViewController.m
//  ShoppingMall
//
//  Created by Alex Cheung on 14/2/14.
//  Copyright (c) 2014 Macie. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ScanQRViewController.h"
#import "MyAccountHomePageViewController.h"
#import "HomePageViewController.h"
#import "MallGiftListPageViewController.h"
#import "RedeemedViewController.h"
#import "ConfirmationPageViewController.h"

@interface ScanQRViewController ()

@end

@implementation ScanQRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withDic:(NSMutableDictionary *)sender
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        dic=sender;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    readerView=[[ZBarReaderView alloc]init];
    readerView.frame=CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height-100);
    readerView.torchMode=0;
    readerView.readerDelegate=self;
    readerView.allowsPinchZoom=NO;
    readerView.scanCrop=CGRectMake(0.1, 0.2, 0.8, 0.8);
    
    UIImageView * image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pick_bg@2x.png"]];
    image.frame = CGRectMake(20, 20, 280, readerView.frame.size.height-40);
    [readerView addSubview:image];
    
    
    _line = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, 280, 2)];
    _line.image = [UIImage imageNamed:@"line@2x.png"];
    [image addSubview:_line];
    //定时器，设定时间过1.5秒，
    timer = [NSTimer scheduledTimerWithTimeInterval:.02 target:self selector:@selector(animation1) userInfo:nil repeats:YES];
    [self.view addSubview:readerView];
    
    // [readerView start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(void)viewWillAppear:(BOOL)animated{
    [readerView start];
}

-(CGRect)getScanCrop:(CGRect)rect readerViewBounds:(CGRect)readerViewBounds{
    CGFloat x,y,width,height;
    x=rect.origin.x/readerViewBounds.size.width;
    y=rect.origin.y/readerViewBounds.size.height;
    width=rect.size.width/readerViewBounds.size.width;
    height=rect.size.height/readerViewBounds.size.height;
    NSLog(@"%f%f%f%f",x, y, width, height);
    return CGRectMake(x, y, width, height);
}

-(void)readerView:(ZBarReaderView *)readerView didReadSymbols:(ZBarSymbolSet *)symbols fromImage:(UIImage *)image{
    for (ZBarSymbol *symbol in symbols) {
        NSLog(@"%@",symbol.data);
        break;
    }
    ConfirmationPageViewController *confirmationPageView;
    if (iPhone5) {
        confirmationPageView=[[ConfirmationPageViewController alloc]initWithNibName:@"ConfirmationPageViewController5" bundle:nil withDic:dic];
    }else{
        confirmationPageView=[[ConfirmationPageViewController alloc]initWithNibName:@"ConfirmationPageViewController" bundle:nil withDic:dic];
    }
    [self.navigationController pushViewController:confirmationPageView animated:YES];
    [readerView stop];
}

-(void)animation1
{
    if (upOrdown == NO) {
        num ++;
        _line.frame = CGRectMake(30, 10+2*num, 220, 2);
        if (2*num == self.view.frame.size.height-160) {
            upOrdown = YES;
        }
    }
    else {
        num --;
        _line.frame = CGRectMake(30, 10+2*num, 220, 2);
        if (num == 0) {
            upOrdown = NO;
        }
    }
}

- (IBAction)backBtnClick {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
