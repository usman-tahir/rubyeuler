// grabbing and parsing json from a web server in objective c

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://dailynum.herokuapp.com/cards/api/20"]];
        NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
        NSError *jsonParsingError = nil;
        NSArray *cards = [NSJSONSerialization JSONObjectWithData:response options:0 error:&jsonParsingError];
        NSLog(@"%@", cards);
    }
    return 0;
}
