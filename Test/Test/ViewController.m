//
//  ViewController.m
//  Test
//
//  Created by 王同钢 on 2017/11/17.
//  Copyright © 2017年 王同钢. All rights reserved.
//

#import "ViewController.h"
#import "NSURL+JBURLString.h"
@interface ViewController ()
@property (nonatomic,strong)NSString *stringName;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.stringName addObserver:self forKeyPath:@"stringName" options:NSKeyValueObservingOptionNew context:nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.stringName=@"1q11";

    


}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"%@",change);
}
-(void)dealloc{
    [self.stringName removeObserver:self forKeyPath:@"stringName"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
