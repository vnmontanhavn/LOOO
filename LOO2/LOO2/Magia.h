//
//  Magia.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface Magia : Arma{
    int skill;
}
-(Magia *) initWithSkill:(int) s;
@property int skill;

@end
