//
//  LocationManager.m
//  calendar
//
//  Created by njw on 2018/12/4.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "LocationManager.h"
#import <CoreLocation/CoreLocation.h>

@interface LocationManager () <CLLocationManagerDelegate>
@property (strong, nonatomic) CLLocationManager* locationManager;
@end

@implementation LocationManager

RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(getLocation) {
  NSLog(@"location!");
  
  [self startLocation];
  
}

-(void)startLocation{
  
  if ([CLLocationManager locationServicesEnabled]) {//判断定位操作是否被允许
    
    self.locationManager = [[CLLocationManager alloc] init];
    
    self.locationManager.delegate = self;//遵循代理
    
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    self.locationManager.distanceFilter = 10.0f;
    
    [_locationManager requestWhenInUseAuthorization];//使用程序其间允许访问位置数据（iOS8以上版本定位需要）
    
    [self.locationManager startUpdatingLocation];//开始定位
    
  }else{//不能定位用户的位置的情况再次进行判断，并给与用户提示
    
    //1.提醒用户检查当前的网络状况
    
    //2.提醒用户打开定位开关
    
  }
  
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
  
  //当前所在城市的坐标值
  CLLocation *currLocation = [locations lastObject];
  
  NSLog(@"经度=%f 纬度=%f 高度=%f", currLocation.coordinate.latitude, currLocation.coordinate.longitude, currLocation.altitude);
  
  //根据经纬度反向地理编译出地址信息
  CLGeocoder * geoCoder = [[CLGeocoder alloc] init];
  
  [geoCoder reverseGeocodeLocation:currLocation completionHandler:^(NSArray *placemarks, NSError *error) {
    
    for (CLPlacemark * placemark in placemarks) {
      
      NSDictionary *address = [placemark addressDictionary];
      
      //  Country(国家)  State(省)  City（市）
      NSLog(@"#####%@",address);
      
      NSLog(@"%@", [address objectForKey:@"Country"]);
      
      NSLog(@"%@", [address objectForKey:@"State"]);
      
      NSLog(@"%@", [address objectForKey:@"City"]);
      
    }
    
  }];
  
}
@end
