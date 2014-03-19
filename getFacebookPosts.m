- (void)getFacebookPosts
{
    /*
        This makes a request to the php file on your server called whateveryounamedit.php. That php file
        is where your App Token is stored which is how facebook reccomends you store the App Token. i.e. more secure,
        isn't given out to everyone who downloads the app. 
        The php file ECHOs back all the JSON data that is parsed with the function fetchedData()
    */
    NSURL *facebookPageURl =[[NSURL alloc] initWithString:@"http://www.yourwebsite.com/whateveryounamedit.php"];
        
    
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *localFilePath = [filePath stringByAppendingPathComponent:@"facebookInfo.json"];
            
    // Run the thread asyncronously so data is parsed as it comes in rather then waiting for all of it and parsing after.
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        smirkusFBpageURl];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                                withObject:data waitUntilDone:YES];
    });        
    }
}

- (void)fetchedData:(NSData *)responseData
{
    /*
        Creates a json file if there isn't one to store your json response data in. 
        You could also parse your json data here as well.
    */
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *localFilePath = [filePath stringByAppendingPathComponent:@"someRelevantName.json"];
    
    // create file if it didn't exist
    if (![[NSFileManager defaultManager] fileExistsAtPath:localFilePath]) {
        [[NSFileManager defaultManager] createFileAtPath:localFilePath contents:nil attributes:nil];
    }
        
    if (responseData != nil){
        NSError *writeError = nil;
        BOOL write = [responseData writeToFile:localFilePath options:NSDataWritingAtomic error:&writeError];
        if (!write){
            NSLog(@"write error: %@", writeError);
        }
    }
    
    NSData *yourData = [[NSData alloc] initWithContentsOfFile:localFilePath];
    
    //parse out the json data
    NSError* error;
    NSMutableDictionary *FBpageJSON = [NSJSONSerialization JSONObjectWithData:yourData options:kNilOptions error:&error];
    // ...
}
    
