//
//  DSViewController.m
//  DynamicCollectionView
//
//  Created by Diana on 08/09/2013.
//  Copyright (c) 2013 Diana Sule. All rights reserved.
//

#import "DSViewController.h"

NSInteger const COUNT = 100;

@interface DSViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *colorsArray;

@end

@implementation DSViewController {
    NSArray *_colorsArray;
}

- (NSArray *)colorsArray {
    if (!_colorsArray) {
        NSMutableArray *holderArray = [@[] mutableCopy];
        for (int i = 0; i < COUNT; i++) {
            CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
            CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
            CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
            UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
            [holderArray addObject:color];
        }
        _colorsArray = [holderArray copy];
    }
    return _colorsArray;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return COUNT;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const CELL_IDENTIFIER = @"Cell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    cell.backgroundColor = self.colorsArray[indexPath.item];
    
    return cell;
}

@end
