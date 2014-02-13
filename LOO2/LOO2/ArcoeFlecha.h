//
//  ArcoeFlecha.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface ArcoeFlecha : Arma{
    int quantflechas;
}
-(ArcoeFlecha *) initWithflechas:(int) f;

@property int quantflechas;
@end
