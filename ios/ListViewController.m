//
//  ListViewController.m
//  calendar
//
//  Created by njw on 2018/11/27.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "ListViewController.h"
#import "RNIOSExportController.h"
#import "CalendarController.h"
#import "BridgeController.h"
#import "MapController.h"
#import "DirectlyHandleController.h"
#import "AnimatedController.h"
#import "LocationController.h"
#import "RNTextController.h"
#import "TestManagerController.h"
#import "RNPageController.h"

@interface ListViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.title = @"List";
  
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  self.navigationController.navigationBar.hidden = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *cellId = @"cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
  if (nil == cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
  }
  cell.textLabel.text = [self.dataSource objectAtIndex:indexPath.row];
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  switch (indexPath.row) {
    case 0: {
      RNIOSExportController *rnexportVc = [[RNIOSExportController alloc] initWithNibName:@"RNIOSExportController" bundle:nil];
      [self.navigationController pushViewController:rnexportVc animated:YES];
    }
      break;
    case 1: {
      CalendarController *calendar = [[CalendarController alloc] initWithNibName:@"CalendarController" bundle:nil];
      [self.navigationController pushViewController:calendar animated:YES];
    }
      break;
    case 2: {
      BridgeController *bridge = [[BridgeController alloc] initWithNibName:@"BridgeController" bundle:nil];
      [self.navigationController pushViewController:bridge animated:YES];
    }
      break;
    
    case 3: {
      MapController *map = [[MapController alloc] initWithNibName:@"MapController" bundle:nil];
      [self.navigationController pushViewController:map animated:YES];
    }
      break;
    
    case 4: {
      DirectlyHandleController *directlyHandle = [[DirectlyHandleController alloc] initWithNibName:@"DirectlyHandleController" bundle:nil];
      [self.navigationController pushViewController:directlyHandle animated:YES];
    }
      break;
    
    case 5: {
      AnimatedController *animated = [[AnimatedController alloc] initWithNibName:@"AnimatedController" bundle:nil];
      [self.navigationController pushViewController:animated animated:YES];
    }
      break;
      
    case 6: {
      LocationController *location = [[LocationController alloc] initWithNibName:@"LocationController" bundle:nil];
      [self.navigationController pushViewController:location animated:YES];
    }
      break;
      
    case 7: {
      RNTextController *text = [[RNTextController alloc] initWithNibName:@"RNTextController" bundle:nil];
      [self.navigationController pushViewController:text animated:YES];
    }
      break;
      
    case 8: {
      TestManagerController *testManager = [[TestManagerController alloc] initWithNibName:@"TestManagerController" bundle:nil];
      [self.navigationController pushViewController:testManager animated:YES];
    }
      break;
      
    case 9: {
      RNPageController *rnPage = [[RNPageController alloc] initWithNibName:@"RNPageController" bundle:nil];
      [self.navigationController pushViewController:rnPage animated:YES];
    }
      break;
      
    default:
      break;
  }
}

- (NSMutableArray *)dataSource {
  if (nil==_dataSource) {
    _dataSource = [[NSMutableArray alloc] initWithObjects:@"RNIOSExportJsToReact (原生通过通知向JS传值)", @"CalendarManager(原生通过通知向JS传值)", @"Bridge（依赖注入）", @"MapController(原生控件封装)", @"directly handle(直接操作)", @"Animated（动画）", @"Location（定位）", @"RNText", @"TestManager", @"RNPageController", nil];
  }
  return _dataSource;
}


@end
