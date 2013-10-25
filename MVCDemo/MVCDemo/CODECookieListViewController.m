//
//  CODECookieListViewController.m
//  MVCDemo
//
//  Created by Code Fellows on 10/21/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "CODECookieListViewController.h"

@interface CODECookieListViewController ()

@end

@implementation CODECookieListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    CODECookie *cookie = [[CODECookie alloc] init];
    cookie.name = @"Chocolate Chip";
    cookie.price = [NSDecimalNumber decimalNumberWithString:@"1.99"];
    cookie.ingredients = @[@"chocolate chips", @"milk", @"butter", @"magic"];
    cookie.glutenFree = FALSE;
    
    CODECookie *cookie2 = [[CODECookie alloc] init];
    cookie2.name = @"Macadamia Nut";
    cookie2.price = [NSDecimalNumber decimalNumberWithString:@"1.99"];
    cookie2.ingredients = @[@"macadamia nuts", @"milk", @"butter", @"magic"];
    cookie2.glutenFree = FALSE;
    
    CODECookie *cookie3 = [[CODECookie alloc] init];
    cookie3.name = @"Butterscotch";
    cookie3.price = [NSDecimalNumber decimalNumberWithString:@"1.99"];
    cookie3.ingredients = @[@"scotch", @"milk", @"butter", @"magic"];
    cookie3.glutenFree = FALSE;
    
    _cookies = [NSMutableArray arrayWithObjects: cookie, cookie2, cookie3, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _cookies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    cell.textLabel.text = [_cookies[indexPath.row] name];
    cell.detailTextLabel.text = [[_cookies[indexPath.row] price] stringValue];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
