/*
  Created by Chris Ledet on 9/1/11.
  Facebook Puzzle: Hoppity Hop
  https://www.facebook.com/careers/puzzles.php?puzzle_id=7
  Usage: hoppity /path/to/input.txt
*/

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {

  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSString *path = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
  NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];

  int inputNumber = (int)[fileContents integerValue];

  char *hoppity = "Hoppity\n";
  char *hophop  = "Hophop\n";
  char *hop     = "Hop\n";

  for(int x = 1; x <= inputNumber; ++x) {
    if(x % 3 == 0 && x % 5 == 0) {
      printf("%s", hop);
    } else if(x % 3 == 0) {
      printf("%s", hoppity);
    } else if(x % 5 == 0) {
      printf("%s", hophop);
    }
  }

  [pool drain];
  return 0;

}
