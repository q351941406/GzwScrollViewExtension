GzwTableViewLoading  
===================================  
   这是我用脚写出来的运行时框架，一行代码解决UITableView加载状态和所有空数据状态
  
    
样式支持全自定义  
-----------------------------------  
  ![enter image description here](http://a2.qpic.cn/psb?/V106kzCe1y2bCc/IAYP0Bo6y*8Rfsgq*KDvjtfqdg*T3bC6plTWm5GcSaE!/b/dF0BAAAAAAAA&bo=QAFOAkABTgIFACM!&rf=viewer_4&t=5) 
   ![enter image description here](http://a2.qpic.cn/psb?/V106kzCe1y2bCc/UAMS*uIh4pI*b*FoSudnKDOt7mnaUeKwawNtKc2..Hk!/b/dFcBAAAAAAAA&bo=QAFOAkABTgIFACM!&rf=viewer_4&t=5)
   ![enter image description here](http://a3.qpic.cn/psb?/V106kzCe1y2bCc/DK7oIHu2rdVbAnBVvIQisnI8Soe3AfUQP9ef6OPuKXQ!/b/dFgBAAAAAAAA&bo=QAFOAkABTgIFACM!&rf=viewer_4&t=5)
    
### 导入框架  
  把工程内的 GzwTableViewLoading 文件夹拖入自己的工程
  
  引用 #import "GzwTableViewLoading.h"
  
  现已加入CocoaPods豪华午餐:pod 'GzwTableViewLoading', '~> 1.0.0'
   
          
### 使用    
    // 在请求数据前
    self.tableView.loading = YES;
  
### 用法示例(详情看demo)
    // 在请求数据前
    self.tableView.loading = YES;
    // 模拟请求延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        for (int i = 0; i < 10; i++) {
            [self.data addObject:[NSString stringWithFormat:@"I'm data，fuck！"]];
        }
        if (self.data.count == 0) {
            self.tableView.loading = NO;
        }
        [self.tableView reloadData];
    });
### 框架的故事：
当我把项目完成了，产品经理说要改掉所有页面的加载样式，这时候我是崩溃的，于是去找第三方库，找到了[一个可用的库](https://github.com/dzenbot/DZNEmptyDataSet)<br />  但需要对每个UITableVIew操作，(用继承？滚一边反省去), 
这都导致了强耦合，于是我用运行时，不对，我用脚封装了这个库，一行代码就搞定了，真正的低耦合

  
  
### 关于我  
> QQ 351941406 有问题，你们是加不了的。 
>  
> QQ群：180972893  可以加
>  
> 希望你们在使用框架的过程中联系我，提供更多宝贵的意见，一起把框架维护好。  
 
  
