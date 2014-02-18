//
//  MockMall.m
//  ShoppingMall
//
//  Created by KIEN-MAN NG on 2/2/14.
//  Copyright (c) 2014 Macie. All rights reserved.
//

#import "MockMall.h"
#import <Sonic/SonicBluetoothCodeHeard.h>
#import <Sonic/SonicCodeHeard.h>
#import <Sonic/SonicContent.h>

@implementation MockMall

@synthesize mallName = _mallName;
@synthesize mallAddress = _mallAddress;
@synthesize adsText = _adsText;

- (id)initWithData:(NSDictionary*)dataDict {
    self = [super init];
    if (self) {
        _mallName = [dataDict objectForKey:@"name"];
        _mallAddress = [dataDict objectForKey:@"address"];
        _adsText = [dataDict objectForKey:@"ads-string"];
        bonusPoints = [(NSNumber*)[dataDict objectForKey:@"bonus-points"] intValue];
        beaconId = [(NSNumber*)[dataDict objectForKey:@"beacon-id"] intValue];
        coordinates.latitude = [(NSNumber*)[dataDict objectForKey:@"latitude"] doubleValue];
        coordinates.longitude = [(NSNumber*)[dataDict objectForKey:@"longitude"] doubleValue];
    }
    return self;
}

+ (NSArray*)getAllMallData {
    static NSMutableArray *allMalls;
    if (allMalls == nil) {
        allMalls = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *dic=[[NSMutableDictionary alloc]init];
        [dic setObject:@"欧美汇" forKey:@"name"];
        [dic setObject:@"EC Mall" forKey:@"en-name"];
        [dic setObject:@"北京市海淀区中关村丹棱街甲1号" forKey:@"address"];
        [dic setObject:@"http://www.ecmall.com.cn/plus/list.php?tid=4" forKey:@"url"];
        [dic setObject:@802396 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"庄胜崇光" forKey:@"name"];
        [dic setObject:@"Sogo" forKey:@"en-name"];
        [dic setObject:@"北京市西城区宣武门外大街8号" forKey:@"address"];
        [dic setObject:@"http://sogo.junefield.com/brand.php" forKey:@"url"];
        [dic setObject:@802397 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"淘汇新天" forKey:@"name"];
        [dic setObject:@"Spot on WFJ" forKey:@"en-name"];
        [dic setObject:@"东安门大街东口" forKey:@"address"];
        [dic setObject:@"http://data.house.sina.com.cn/bj68149/xinxi/" forKey:@"url"];
        [dic setObject:@802398 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"西单大悦城" forKey:@"name"];
        [dic setObject:@"Joy City Xidan" forKey:@"en-name"];
        [dic setObject:@"西单北大街甲131号大悦城" forKey:@"address"];
        [dic setObject:@"http://www.xidanjoycity.com/about/index.html" forKey:@"url"];
        [dic setObject:@802399 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"朝阳大悦城" forKey:@"name"];
        [dic setObject:@"Joy City Chaoyang" forKey:@"en-name"];
        [dic setObject:@"101 朝阳北路朝阳区" forKey:@"address"];
        [dic setObject:@"http://www.cyjoycity.com/index.html" forKey:@"url"];
        [dic setObject:@1 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"乐天银泰" forKey:@"name"];
        [dic setObject:@"Lotte Yintai" forKey:@"en-name"];
        [dic setObject:@"北京市东城区王府井大街88号" forKey:@"address"];
        [dic setObject:@"http://about.yintai.com/intime/bj.html" forKey:@"url"];
        [dic setObject:@2 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"银座" forKey:@"name"];
        [dic setObject:@"Ginza Mall" forKey:@"en-name"];
        [dic setObject:@"北京市东城区东直门外大街48号" forKey:@"address"];
        [dic setObject:@"http://www.ginza-mall.com/shop/detail.aspx" forKey:@"url"];
        [dic setObject:@3 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"世贸天阶" forKey:@"name"];
        [dic setObject:@"The Place" forKey:@"en-name"];
        [dic setObject:@"世贸天阶位于北京市朝阳区光华路9号" forKey:@"address"];
        [dic setObject:@"http://www.theplace.cn/" forKey:@"url"];
        [dic setObject:@4 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"芳草地" forKey:@"name"];
        [dic setObject:@"Parkview Green" forKey:@"en-name"];
        [dic setObject:@"北京市朝阳区东大桥路9号" forKey:@"address"];
        [dic setObject:@"http://www.parkviewgreen.com/cn/shop/" forKey:@"url"];
        [dic setObject:@5 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
        
        [dic removeAllObjects];
        [dic setObject:@"北京APM" forKey:@"name"];
        [dic setObject:@"Beijing APM" forKey:@"en-name"];
        [dic setObject:@"王府井大街138号" forKey:@"address"];
        [dic setObject:@"http://www.beijingapm.cn/templates/T_search/index.aspx?nodeid=9" forKey:@"url"];
        [dic setObject:@6 forKey:@"beacon-id"];
        [dic setObject:@"赠送烤鸡腿" forKey:@"ads-string"];
        [dic setObject:@22.278151 forKey:@"latitude"];
        [dic setObject:@114.181706 forKey:@"longitude"];
        [dic setObject:@10 forKey:@"bonus-points"];
        [allMalls addObject:[[MockMall alloc]initWithData:dic]];
    }
    return allMalls;
}

+ (NSDictionary*)getBeaconIdMap {
    static NSDictionary *beaconIdMap;
    if (beaconIdMap == nil) {
        NSArray* allMalls = [MockMall getAllMallData];
        NSMutableArray* beaconIds = [[NSMutableArray alloc]init];
        for (MockMall* mall in allMalls) {
            [beaconIds addObject:[[NSNumber alloc]initWithInt:[mall getBeaconId]]];
        }
        beaconIdMap = [[NSDictionary alloc]initWithObjects:allMalls forKeys:beaconIds];
    }
    return beaconIdMap;
}

+ (void)load {
    [super load];
    [MockMall getAllMallData];
}

+ (MockMall*)getMallWithSonicCode:(SonicCodeHeard*)code {
    int beaconCode = -1;
    if ([code isKindOfClass:[SonicBluetoothCodeHeard class]]) {
        SonicBluetoothCodeHeard* blueHeard = (SonicBluetoothCodeHeard*) code;
        beaconCode = [blueHeard beaconCode];
    } else if ([code isKindOfClass:[SonicAudioHeardCode class]]) {
        SonicAudioHeardCode* audioHeard = (SonicAudioHeardCode*) code;
        beaconCode = [audioHeard beaconCode];
    }
    
    if (beaconCode == -1) {
        NSMutableDictionary *dic=[[NSMutableDictionary alloc]init];
        [dic setObject:@"Unrecognized" forKey:@"name"];
        [dic setObject:@"Unrecognized" forKey:@"en-name"];
        [dic setObject:@"Unrecognized" forKey:@"address"];
        [dic setObject:@"http://Unrecognized/Unrecognized" forKey:@"url"];
        [dic setObject:@-1 forKey:@"beacon-id"];
        [dic setObject:@"赠送X" forKey:@"ads-string"];
        [dic setObject:@0 forKey:@"latitude"];
        [dic setObject:@0 forKey:@"longitude"];
        [dic setObject:@1 forKey:@"bonus-points"];
        return [[MockMall alloc]initWithData:dic];
    }

    NSNumber* beaconNumber = [[NSNumber alloc]initWithInt:beaconCode];
    NSDictionary* beaconMap = [MockMall getBeaconIdMap];
    MockMall* mall = [beaconMap objectForKey:beaconNumber];
    return mall;
}

- (int) getBonusPoints {
    return bonusPoints;
}

- (int) getBeaconId {
    return beaconId;
}

- (CLLocationCoordinate2D) getCoordinates {
    return coordinates;
}

- (NSString*) getMallName
{
    return _mallName;
}

- (NSString*) getMallAddress
{
    return _mallAddress;
}


@end
