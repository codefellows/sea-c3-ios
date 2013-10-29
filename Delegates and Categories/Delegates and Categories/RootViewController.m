//
//  RootViewController.m
//  Delegates and Categories
//
//  Created by John Clem on 10/24/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "RootViewController.h"
#import "UIImageView+Rounded.h"
#import "PostsDataController.h"

@interface RootViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImageView *imageView; // , *imageViewTwo;
@property (nonatomic, strong) UIImageView *imageViewTwo;

@end

@implementation RootViewController

- (IBAction)getAPicture:(id)sender
{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.allowsEditing = YES;
    [self presentViewController:picker animated:YES completion:^{
        NSLog(@"Picker should be showing");
    }];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIImagePickerControllerDelegate



- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSArray *posts = [[PostsDataController sharedController] posts];
    
    
    
    NSLog(@"Did Finish");
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dismissing Image Picker");
        UIImage *pickedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
        UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
        
        _imageView = [UIImageView roundedImageViewWithFrame:CGRectMake(0.f, 0.f, 160.f, 160.f)];
        _imageViewTwo = [UIImageView roundedImageViewWithFrame:CGRectMake(160.f, 0.f, 160.f, 160.f)];

        [self.view addSubview:_imageView];
        [self.view addSubview:_imageViewTwo];
        
        [_imageView setImage:pickedImage];
        [_imageViewTwo setImage:editedImage];

    }];

}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    NSLog(@"Cancelled");
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dismissing Image Picker");
    }];
}

@end
