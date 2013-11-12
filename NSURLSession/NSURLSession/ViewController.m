//
//  ViewController.m
//  NSURLSession
//
//  Created by John Clem on 11/11/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <NSURLSessionDownloadDelegate>
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //  initialize a default session config
    NSURLSessionConfiguration *sessionConfig =[NSURLSessionConfiguration defaultSessionConfiguration];
    
    // create a new nsurlsession
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:self delegateQueue:nil];
    
    NSURL *imageURL = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/b/b1/Oosterpark_field_of_grass.JPG"];
    
    NSURLSessionDownloadTask *downloadImageDataTask = [session downloadTaskWithURL:imageURL];
    
    [downloadImageDataTask resume];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSURLSessionDownloadDelegate

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    CGFloat percentComplete = (CGFloat)totalBytesWritten/totalBytesExpectedToWrite;
    
    NSLog(@"%.2f percent complete", percentComplete*100.f);
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didResumeAtOffset:(int64_t)fileOffset expectedTotalBytes:(int64_t)expectedTotalBytes
{
    NSLog(@"Download Resumed");
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
    NSLog(@"Download Finished");
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        NSData *imageData = [NSData dataWithContentsOfURL:location];
        UIImage *image = [UIImage imageWithData:imageData];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
        [imageView setImage:image];
        [imageView setContentMode:UIViewContentModeScaleAspectFit];
        [self.view addSubview:imageView];
        NSLog(@"Adding image");
    }];
}

@end
