//
//  Model.m
//  Exercise1
//
//  Created by Yin Kokpheng on 11/5/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString *)inputName{
    if (!(self = [super init]))
        return nil;
    _name = inputName;
    return self;
}

- (BOOL)setName:(NSString *)name {
    if([name length] == 0){
        return false;
    }
    _name = name;
    return true;
}

-(NSString *)getName{
    return _name;
}



- (BOOL)setAge:(int)age {
    if(age < 18 || age > 100                    ){
        NSLog(@"f");
        return false;
    }
    
    NSLog(@"t");
    _age =age;
    return true;
}

-(int)getAge{
    return _age;
}

@end
