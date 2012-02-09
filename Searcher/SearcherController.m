//
//  SearcherController.m
//  Searcher
//
//  Created by xx xiao on 12-2-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SearcherController.h"

@implementation SearcherController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
	[_view release];
	[super dealloc];
}

- (UIView *)view
{
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 71)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/Searcher.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, 316, 71);
		[_view addSubview:bgView];
		[bgView release];

        UISearchBar *bar = [[UISearchBar alloc] init];
        [[bar.subviews objectAtIndex:0]removeFromSuperview];
        bar.frame = CGRectMake(0, 0, 316, 71);
        bar.delegate = self;
        [_view addSubview:bar];
        [bar release];
	}

	return _view;
}

- (float)viewHeight
{
	return 71.0f;
}
#pragma -
#pragma searchBarDelegate
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    //    [self doSearch:searchBar];[
    searchBar.text = nil;
}


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    NSString *search = searchBar.text;
    
    NSURL *url =  [NSURL URLWithString:[NSString stringWithFormat:@"http://www.bing.com/search?q=%@",search]];
    [[UIApplication sharedApplication] openURL:url];
    
    
    
}

@end