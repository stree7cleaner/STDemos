//
//  STSquareBeautyComment.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STSquareBeautyComment.h"
#import "MJExtension.h"

@implementation STSquareBeautyComment
- (NSDictionary *)objectClassInArray

{
    return @{@"images" : [NSString class]};
}

+ (NSArray *)fakeDatas
{
    NSArray *array = @[
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"timeStamp":@"1460261446.467911",
                           @"content":@"大学的时候在图书馆看杂志，对面坐下一个短裙美眉，抑制不住那颗骚动的心开始在手上转笔，故意掉了两次之后对面传来一张纸条：“同学，笔别摔坏了，姐姐穿着打底裤呢！”",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=775324924bfbfbeddc0c3e7b4dc0db00/6d81800a19d8bc3e9cc9b367828ba61ea9d3455d.jpg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg",
                                   @"http://img5.duitang.com/uploads/item/201510/24/20151024101555_hLejT.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201507/03/20150703154815_BYZzM.jpeg",
                                   @"http://img5.duitang.com/uploads/item/201512/17/20151217100727_JUPWi.thumb.700_0.jpeg"
                                       ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"小李老母",
                           @"timeStamp":@"1460261346.467911",
                           @"content":@"今天费了好大劲买了个上个世纪的鼠标，同学过来瞧了瞧笑尿：“都什么年代了还在用这种鼠标！”我回答：“你的鼠标有我这个安全么？我走的时候把珠子带走看谁能玩”同学沉默了一下问：“在哪买的？”",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"测试狮",
                           @"timeStamp":@"1460260446.467911",
                           @"content":@"初中时，我喜欢一个女生，那天我正在玩手机，突然收到她的信息：“明天礼拜六我们去公园把！”呵呵，像我这么正直的人，果断回复：“我同桌那么喜欢你，你竟然这样，唉！”之后，我默默的把她拉入黑名单，再之后，我把手机还给了同桌。",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"程序援",
                           @"timeStamp":@"1460231446.467911",
                           @"content":@"今天晚饭后散步碰上了前女友，虽说当年她势利跟有钱人跑了，出于礼貌，还是上前打个招呼。\n我问她：“过得怎样？”\n她说：“以前就别提了，现在又找了个高富帅，开大奔的帅小伙！你等会儿，顺便帮我把把关。” \n得瑟，一点都没变，结果帅小伙一来，急匆匆的跑过来：“老板，这是我的女朋友。”",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"张三",
                           @"timeStamp":@"1460161446.467911",
                           @"content":@"在公司里我最讨厌的不是老总，而是我的同事，因为他经常在我面前说我老婆长得很丑。\n说一次我忍了，说两次我也忍了，谁知他天天说个不停。\n这天中午我俩坐在一块吃饭，结果他又一次说我老婆长得丑。\n我终于忍无可忍，站起来拿起饭盒狠狠地摔在了他的脸上，骂道：你他妈吃饭的时候能不能不说这么恶心的事！",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=775324924bfbfbeddc0c3e7b4dc0db00/6d81800a19d8bc3e9cc9b367828ba61ea9d3455d.jpg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李四",
                           @"timeStamp":@"1458714384",
                           @"content":@"便秘在厕所，差不多快一个小时，跟闺蜜哭诉：你知道那种感觉吗！那条屎卡在我菊花出不来回不去！特别硬！出来一点一收缩又回去一点！就这样熬了半个多小时才终于拉出来！\n闺蜜淡淡回了一句话：怎么感觉你被一条屎操了。",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"timeStamp":@"1458698858",
                           @"content":@"大学的时候在图书馆看杂志，对面坐下一个短裙美眉，抑制不住那颗骚动的心开始在手上转笔，故意掉了两次之后对面传来一张纸条：“同学，笔别摔坏了，姐姐穿着打底裤呢！”",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=775324924bfbfbeddc0c3e7b4dc0db00/6d81800a19d8bc3e9cc9b367828ba61ea9d3455d.jpg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"小李老母",
                           @"timeStamp":@"1458544790",
                           @"content":@"今天费了好大劲买了个上个世纪的鼠标，同学过来瞧了瞧笑尿：“都什么年代了还在用这种鼠标！”我回答：“你的鼠标有我这个安全么？我走的时候把珠子带走看谁能玩”同学沉默了一下问：“在哪买的？”",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"测试狮",
                           @"timeStamp":@"1459477908",
                           @"content":@"初中时，我喜欢一个女生，那天我正在玩手机，突然收到她的信息：“明天礼拜六我们去公园把！”呵呵，像我这么正直的人，果断回复：“我同桌那么喜欢你，你竟然这样，唉！”之后，我默默的把她拉入黑名单，再之后，我把手机还给了同桌。",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"程序援",
                           @"timeStamp":@"1459477908",
                           @"content":@"今天晚饭后散步碰上了前女友，虽说当年她势利跟有钱人跑了，出于礼貌，还是上前打个招呼。\n我问她：“过得怎样？”\n她说：“以前就别提了，现在又找了个高富帅，开大奔的帅小伙！你等会儿，顺便帮我把把关。” \n得瑟，一点都没变，结果帅小伙一来，急匆匆的跑过来：“老板，这是我的女朋友。”",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"张三",
                           @"timeStamp":@"1459477908",
                           @"content":@"在公司里我最讨厌的不是老总，而是我的同事，因为他经常在我面前说我老婆长得很丑。\n说一次我忍了，说两次我也忍了，谁知他天天说个不停。\n这天中午我俩坐在一块吃饭，结果他又一次说我老婆长得丑。\n我终于忍无可忍，站起来拿起饭盒狠狠地摔在了他的脸上，骂道：你他妈吃饭的时候能不能不说这么恶心的事！",
                           @"images":
                               @[
                                   @"http://cdn.duitang.com/uploads/item/201509/19/20150919093532_HVGy2.jpeg",
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://img5.duitang.com/uploads/item/201410/04/20141004184536_c5JXC.thumb.224_0.jpeg",
                                   @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=775324924bfbfbeddc0c3e7b4dc0db00/6d81800a19d8bc3e9cc9b367828ba61ea9d3455d.jpg",
                                   @"http://qq.logowu.com/show/007/001/13.jpg"
                                   ]
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李四",
                           @"timeStamp":@"1459477908",
                           @"content":@"便秘在厕所，差不多快一个小时，跟闺蜜哭诉：你知道那种感觉吗！那条屎卡在我菊花出不来回不去！特别硬！出来一点一收缩又回去一点！就这样熬了半个多小时才终于拉出来！\n闺蜜淡淡回了一句话：怎么感觉你被一条屎操了。",
                           @"images":
                               @[
                                   @"http://img4.duitang.com/uploads/item/201508/08/20150808161956_jYA3K.thumb.224_0.png",
                                   @"http://qq.logowu.com/show/007/001/13.jpg",
                                   @"http://img5q.duitang.com/uploads/item/201507/02/20150702131433_eSxMY.thumb.224_0.jpeg"
                                   ]
                           }


                       ];

    return [self mj_objectArrayWithKeyValuesArray:array];
}

@end
