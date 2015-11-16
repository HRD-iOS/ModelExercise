//
//  Model.h
//  Exercise1
//
//  Created by Yin Kokpheng on 11/5/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}

-(BOOL)setName:(NSString *)name;
-(NSString *)getName;
-(BOOL)setAge:(int)age;
-(int)getAge;

@end
