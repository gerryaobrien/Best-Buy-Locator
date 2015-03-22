//
//  AITViewController.h
//  Best Buy Locator
//
//  Created by Gerry O'Brien on 11/9/13.
//  Copyright (c) 2013 Gerry O'Brien. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AITViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, SHRetrieveStoresDelegate>


@property (weak, nonatomic) IBOutlet UILabel *zipCodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *radiusLabel;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UILabel *storeLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (strong, nonatomic) IBOutlet UITextField *zipCodeText;
@property (strong, nonatomic) IBOutlet UITextField *searchRadiusText;
@property (strong, nonatomic) NSArray *myStores;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
//@property (weak, nonatomic) IBOutlet MKMapView *mapView;



- (IBAction)searchBestBuy:(id)sender;
- (IBAction)textFieldEditingComplete:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (NSString *)dataFilePath;
- (void)applicationWillResignActive:(NSNotification *)notification;
@end
