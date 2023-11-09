//
//  ViewController.m
//  patternOfAdapter
//
//  Created by haijunyan on 2019/2/16.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"

#import "BusinessCardView.h"
#import "Model.h"
#import "ModelAdapter.h"

#import "NewCardModel.h"
#import "NewCardModelApater.h"
#import "CardAdapter.h"

#import "GamePadDecorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BusinessCardView *cardView = [[BusinessCardView alloc] initWithFrame:CGRectMake(0, 0, 200, 130)];
    cardView.center            = self.view.center;
    [self.view addSubview:cardView];
    
    //直接赋值简单粗暴
    // cardView.name        = @"JiKeXueYuan";
    // cardView.lineColor   = [UIColor redColor];
    // cardView.phoneNumber = @"101 - 5687 - 000";
    
    //以对象赋值
    Model *model      = [[Model alloc] init];
    model.name        = @"wupeng";
    model.lineColor   = [UIColor redColor];
    model.phoneNumber = @"101 - 5687 - 000";
    
    NewCardModel *newCardModel  = [[NewCardModel alloc] init];
    newCardModel.name           = @"wupeng";
    newCardModel.colorHexString = @"black";
    newCardModel.phoneNumber    = @"123 - 4567 - 891";
    
//    // 与输入建立联系(实际结构/实际特征取决于alloc相对应的)
//    BaseAdapterAsis *modelAdapter = [[CardAdapter alloc] initWithData:model];
//    // 与输出建立联系
//    [cardView loadData:modelAdapter];
    // data类型或数据格式发生改变，只需加个适配器/同个适配器里面添加处理逻辑即可，不需要在VC里或View集成组件体里额外增加逻辑代码(降低数据层和视图层的耦合度)
    BaseAdapterAsis *modelAdapter = [[CardAdapter alloc] initWithData:newCardModel];
    //与输出建立联系
    [cardView loadData:modelAdapter];






}


@end
