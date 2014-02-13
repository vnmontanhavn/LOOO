//
//  Espada.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
@interface Espada : Arma{
    int forcamax;
    int desgaste;
}
-(Espada *) initWithForca:(int) f andDesgaste:(int) d;
@property int forcamax;
@property int desgaste;
@end
