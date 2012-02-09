//
//  SearcherController.h
//  Searcher
//
//  Created by xx xiao on 12-2-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <BBWeeAppController-Protocol.h>

@interface SearcherController : NSObject <BBWeeAppController,UISearchBarDelegate>
{
    UIView *_view;
}

- (UIView *)view;

@end