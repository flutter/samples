// Autogenerated from Pigeon (v0.2.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "api.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString*, id>* wrapResult(NSDictionary *result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}

@interface BKBook ()
+(BKBook*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end

@implementation BKBook
+(BKBook*)fromMap:(NSDictionary*)dict {
  BKBook* result = [[BKBook alloc] init];
  result.title = dict[@"title"];
  if ((NSNull *)result.title == [NSNull null]) {
    result.title = nil;
  }
  result.subtitle = dict[@"subtitle"];
  if ((NSNull *)result.subtitle == [NSNull null]) {
    result.subtitle = nil;
  }
  result.author = dict[@"author"];
  if ((NSNull *)result.author == [NSNull null]) {
    result.author = nil;
  }
  result.summary = dict[@"summary"];
  if ((NSNull *)result.summary == [NSNull null]) {
    result.summary = nil;
  }
  result.publishDate = dict[@"publishDate"];
  if ((NSNull *)result.publishDate == [NSNull null]) {
    result.publishDate = nil;
  }
  result.pageCount = dict[@"pageCount"];
  if ((NSNull *)result.pageCount == [NSNull null]) {
    result.pageCount = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.title ? self.title : [NSNull null]), @"title", (self.subtitle ? self.subtitle : [NSNull null]), @"subtitle", (self.author ? self.author : [NSNull null]), @"author", (self.summary ? self.summary : [NSNull null]), @"summary", (self.publishDate ? self.publishDate : [NSNull null]), @"publishDate", (self.pageCount ? self.pageCount : [NSNull null]), @"pageCount", nil];
}
@end

@interface BKFlutterBookApi ()
@property (nonatomic, strong) NSObject<FlutterBinaryMessenger>* binaryMessenger;
@end

@implementation BKFlutterBookApi
- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger>*)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}

- (void)displayBookDetails:(BKBook*)input completion:(void(^)(NSError* _Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.FlutterBookApi.displayBookDetails"
      binaryMessenger:self.binaryMessenger];
  NSDictionary* inputMap = [input toMap];
  [channel sendMessage:inputMap reply:^(id reply) {
    completion(nil);
  }];
}
@end
void BKHostBookApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<BKHostBookApi> api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.HostBookApi.cancel"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api cancel:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.HostBookApi.finishEditingBook"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        BKBook *input = [BKBook fromMap:message];
        FlutterError *error;
        [api finishEditingBook:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
