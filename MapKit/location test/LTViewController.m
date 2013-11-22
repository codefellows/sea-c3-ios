//
//  LTViewController.m
//  location test
//
//  Created by John Clem on 9/17/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "LTViewController.h"
#import "LTAnnotation.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface LTViewController () <MKMapViewDelegate, UISearchBarDelegate>
{
    CLGeocoder *geocoder;
    IBOutlet MKMapView *mapView;
    IBOutlet UISearchBar *mapSearchBar;
}
@end

@implementation LTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [mapView setDelegate:self];
    [mapSearchBar setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getLocationsForSearchTerm:(NSString *)term
{
    if (!geocoder)
        geocoder = [[CLGeocoder alloc] init];
    
    [geocoder geocodeAddressString:term
                 completionHandler:^(NSArray* placemarks, NSError* error){
                     if (error) {
                         NSLog(@"Error Occurred: %@", error);
                         UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Locations Found" message:@"Unable to find a location matching your search query" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                         [alert show];
                     } else if (placemarks.count) {
                         for (CLPlacemark* aPlacemark in placemarks)
                         {
                             NSLog(@"%@", aPlacemark);
                             
                             // Add a More Info button to the annotation's view.
                             LTAnnotation *annotation = [[LTAnnotation alloc] init];
                             [annotation setCoordinate:aPlacemark.location.coordinate];
                             [annotation setTitle:aPlacemark.description]; //You can set the subtitle too
                             [mapView addAnnotation:annotation];
                         }
                     } else {
                         UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Locations Found" message:@"Unable to find a location matching your search query" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                         [alert show];
                     }
                 }];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
//    NSLog(@"Searching For %@", searchText);
        
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [mapSearchBar resignFirstResponder];
    NSLog(@"Searching For %@", searchBar.text);
    [self getLocationsForSearchTerm:searchBar.text];
}

@end
