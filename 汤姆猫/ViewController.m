//
//  ViewController.m
//  汤姆猫
//
//  Created by 三哥哥 on 2019/4/10.
//  Copyright © 2019年 三哥哥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgViewCat;
@property (nonatomic,strong) NSMutableArray *array;
@property (nonatomic,strong) NSMutableArray *arraym;
@property (nonatomic,strong) NSMutableArray *arraymm;
@property (nonatomic,strong) NSMutableArray *arraym1;
@property (nonatomic,strong) NSMutableArray *arraym2;
@property (nonatomic,strong) NSMutableArray *arraym3;
@property (nonatomic,strong) NSMutableArray *arraym4;
- (IBAction)drink;
- (IBAction)cymbal;
- (IBAction)fart;
- (IBAction)eat;
- (IBAction)pie;
- (IBAction)scratch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self xc];
    
    
    
  
}


-(void)xc{
    //喝奶
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraym=[NSMutableArray array];
        for (int i=0; i<80; i++) {
            
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"drink_%02d.jpg",i];
            NSLog(@"%@ ----drink_%02d.jpg",[NSThread currentThread],i);
            
            //通过UIImage *img=[UIImage imageNamed:imgname];这种方式加载图片 图片会保存到内存没有被释放,就会导致内存爆满(这个叫缓存)
//            UIImage *img=[UIImage imageNamed:imgname];
            
            //解决:换一种加载图片方式,不要使用缓存
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            [self.arraym addObject:img];
        }
        
    });
    //敲鼓
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraymm=[NSMutableArray array];
        for (int i=0; i<12; i++) {
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"cymbal_%02d.jpg",i];
            NSLog(@"%@ ----cymbal_%02d.jpg",[NSThread currentThread],i);
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            [self.arraymm addObject:img];
        }
    });
    //放屁
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraym1=[NSMutableArray array];
        for (int i=0; i<27; i++) {
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"fart_%02d.jpg",i];
            NSLog(@"%@----fart_%02d.jpg",[NSThread currentThread],i);
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            //将27图片给可变数组
            [self.arraym1 addObject:img];
        }
    });
    //玩鸟
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraym2=[NSMutableArray array];
        for (int i=0; i<39; i++) {
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"eat_%02d.jpg",i];
            NSLog(@"%@----eat_%02d.jpg",[NSThread currentThread],i);
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            //将27图片给可变数组
            [self.arraym2 addObject:img];
        }
    });
    
    //甩饼
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraym3=[NSMutableArray array];
        for (int i=0; i<23; i++) {
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"pie_%02d.jpg",i];
            NSLog(@"%@----pie_%02d.jpg",[NSThread currentThread],i);
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            //将27图片给可变数组
            [self.arraym3 addObject:img];
        }
    });
    
    
    //猫爪
    dispatch_async(dispatch_queue_create(0, 0), ^{
        self.arraym4=[NSMutableArray array];
        for (int i=0; i<55; i++) {
            //拼接图片名称
            NSString *imgname=[NSString stringWithFormat:@"scratch_%02d.jpg",i];
            NSLog(@"%@----scratch_%02d.jpg",[NSThread currentThread],i);
            NSString *path=[[NSBundle mainBundle]pathForResource:imgname ofType:nil];
            UIImage *img=[UIImage imageWithContentsOfFile:path];
            //将27图片给可变数组
            [self.arraym4 addObject:img];
        }
    });
    
}


- (IBAction)drink {

    
//    if(self.imgViewCat.isAnimating){
//        return;
//    }
    
    
    //0. 动态加载图片到一个nsarray中
    
   
    
    
    //1. 设置uiimageview(图片框)的animationimages属性,这个属性包含的就是所有那些要执行动画的图片
    self.imgViewCat.animationImages=self.arraym;
    
    
    //2. 设置动画持续时间
    self.imgViewCat.animationDuration = self.imgViewCat.animationImages.count * 0.1;
    
    
    //3. 设置动画是否需要重复播放
    self.imgViewCat.animationRepeatCount = 1;
    
    
    //4. 开启动画
    
    [self.imgViewCat startAnimating];
    
    
    
//   //5. 清空图片集合
//    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 0.1];
    
}
//打鼓动画
- (IBAction)cymbal {
    
   
    
    //将数组图片给执行图片
    self.imgViewCat.animationImages=self.arraymm;
    
    //设置动画持续时间
    self.imgViewCat.animationDuration = self.imgViewCat.animationImages.count * 0.1;
    
    //是否持续播放
    self.imgViewCat.animationRepeatCount = 1;
    
    //开始播放
    [self.imgViewCat startAnimating];
    //5. 清空图片集合
    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 0.1];
}
//放屁
- (IBAction)fart {
    
   
    
    
    //1.将图片数组给执行img
    
    self.imgViewCat.animationImages=self.arraym1;
    
    //2.设置动画持续时间
    
    self.imgViewCat.animationDuration=self.imgViewCat.animationImages.count * 0.1;
    
    //3.是否重复
    self.imgViewCat.animationRepeatCount = 1;
    
    //开始播放
    [self.imgViewCat startAnimating];
    //5. 清空图片集合
    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 0.1];
}

//小鸟

- (IBAction)eat {
    //1.将图片数组给执行img
    
    self.imgViewCat.animationImages=self.arraym2;
    
    //2.设置动画持续时间
    
    self.imgViewCat.animationDuration=self.imgViewCat.animationImages.count * 0.1;
    
    //3.是否重复
    self.imgViewCat.animationRepeatCount = 1;
    
    //开始播放
    [self.imgViewCat startAnimating];
    //5. 清空图片集合
    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 0.1];
    
}

//甩饼

- (IBAction)pie {
    //1.将图片数组给执行img
    
    self.imgViewCat.animationImages=self.arraym3;
    
    //2.设置动画持续时间
    
    self.imgViewCat.animationDuration=self.imgViewCat.animationImages.count * 0.1;
    
    //3.是否重复
    self.imgViewCat.animationRepeatCount = 1;
    
    //开始播放
    [self.imgViewCat startAnimating];
    //5. 清空图片集合
    [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 0.1];
}

//猫爪
- (IBAction)scratch {
    //将数组图片给执行图片
    self.imgViewCat.animationImages=self.arraym4;
    
    //设置动画持续时间
    self.imgViewCat.animationDuration = self.imgViewCat.animationImages.count * 0.1;
    
    //是否持续播放
    self.imgViewCat.animationRepeatCount = 1;
    
    //开始播放
    [self.imgViewCat startAnimating];
//    [self.imgViewCat setAnimationImages:nil];
     [self.imgViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgViewCat.animationImages.count * 1];
    
}
@end
