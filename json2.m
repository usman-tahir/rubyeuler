// parse JSON from SEPTA API in objective-c

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSData *trainData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString:@"http://www3.septa.org/hackathon/Arrivals/East%20Falls/20"]];
        NSError *error;
        NSMutableDictionary *eastFallsTrains = [NSJSONSerialization JSONObjectWithData:trainData options:NSJSONReadingMutableContainers error:&error];
        
        if (error) {
            NSLog(@"%@", [error localizedDescription]);
        } else {
            NSString *dictKey;
            for (NSString *key in eastFallsTrains) {
                dictKey = key;
            }
            
            NSArray *inbound = eastFallsTrains[dictKey];
            NSDictionary *inboundTrains = inbound[1];
            inbound = inboundTrains[@"Southbound"];
            
            // release variables
            inboundTrains = nil;
            dictKey = nil;
            
            NSDictionary *trainOne = inbound[0];
            NSString *trainOneNumber = trainOne[@"train_id"];
            NSString *trainTwoNumber = trainOne[@"train_id"];
            
            NSDictionary *trainTwo = inbound[1];
            NSString *trainOneTime = trainOne[@"depart_time"];
            NSString *trainTwoTime = trainTwo[@"depart_time"];
            
            NSLog(@"Train %@ departs at %@", trainOneNumber, trainOneTime);
            NSLog(@"Train %@ departs at %@", trainTwoNumber, trainTwoTime);
        }
    }
    return 0;
}
