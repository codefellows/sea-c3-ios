//
//  CFViewController.m
//  NSURLSessionExample
//
//  Created by Code Fellows on 11/11/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "CFViewController.h"
#import <THProgressView/THProgressView.h>

@interface CFViewController () <NSURLSessionDownloadDelegate>

@property (nonatomic, strong) THProgressView *progressBar;

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor blackColor];
    
    [self addProgressBar];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration: configuration
                                                          delegate: self
                                                     delegateQueue: nil];
    NSURL *downloadURL = [NSURL URLWithString: @"http://thewallpaperhd.com/wp-content/uploads/2013/05/Siamese-Cat-And-German-Shepherd-Friendship.jpg"];

    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithURL: downloadURL];
    
    [downloadTask resume];
}

- (void)addProgressBar
{
    CGRect rect = CGRectMake(0, 0, 300, 44);
    THProgressView *progressView = [[THProgressView alloc] initWithFrame:rect];
    progressView.borderTintColor = [UIColor whiteColor];
    progressView.progressTintColor = [UIColor blueColor];
    progressView.center = self.view.center;
    progressView.progress = 0.f;
    
    self.progressBar = progressView;
    
    [self.view addSubview: self.progressBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    NSLog(@"URL Session did finish downloading URL: %@", location);
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        NSData *fileData = [NSData dataWithContentsOfURL: location];
        UIImage *image = [UIImage imageWithData: fileData];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame: self.view.frame];
        [imageView setImage: image];
        [imageView setContentMode: UIViewContentModeScaleAspectFit];
        [self.view addSubview: imageView];
    }];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    CGFloat percentComplete = (CGFloat)totalBytesWritten/totalBytesExpectedToWrite;
    NSLog(@"URL Session did write %lli of %lli (%f)", bytesWritten, totalBytesWritten, percentComplete * 100.f);
    
    if (percentComplete >= .7) {
        [session invalidateAndCancel];
    }
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [self.progressBar setProgress: percentComplete animated: NO];
    }];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
 didResumeAtOffset:(int64_t)fileOffset
expectedTotalBytes:(int64_t)expectedTotalBytes
{
    NSLog(@"Did resume...");
}

@end
