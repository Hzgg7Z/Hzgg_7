//
//  My_Weibo.m
//
//  Created by xt  on 16/10/28
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "My_Weibo.h"
#import "User.h"
#import "Visible.h"


NSString *const kMy_WeiboAttitudesCount = @"attitudes_count";
NSString *const kMy_WeiboSource = @"source";
NSString *const kMy_WeiboTextLength = @"textLength";
NSString *const kMy_WeiboSourceType = @"source_type";
NSString *const kMy_WeiboHasActionTypeCard = @"hasActionTypeCard";
NSString *const kMy_WeiboMid = @"mid";
NSString *const kMy_WeiboIdstr = @"idstr";
NSString *const kMy_WeiboHotWeiboTags = @"hot_weibo_tags";
NSString *const kMy_WeiboSourceAllowclick = @"source_allowclick";
NSString *const kMy_WeiboTruncated = @"truncated";
NSString *const kMy_WeiboInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kMy_WeiboDarwinTags = @"darwin_tags";
NSString *const kMy_WeiboCommentsCount = @"comments_count";
NSString *const kMy_WeiboPositiveRecomFlag = @"positive_recom_flag";
NSString *const kMy_WeiboPicUrls = @"pic_urls";
NSString *const kMy_WeiboIsLongText = @"isLongText";
NSString *const kMy_WeiboUserType = @"userType";
NSString *const kMy_WeiboFavorited = @"favorited";
NSString *const kMy_WeiboRepostsCount = @"reposts_count";
NSString *const kMy_WeiboTextTagTips = @"text_tag_tips";
NSString *const kMy_WeiboGifIds = @"gif_ids";
NSString *const kMy_WeiboGeo = @"geo";
NSString *const kMy_WeiboId = @"id";
NSString *const kMy_WeiboUser = @"user";
NSString *const kMy_WeiboInReplyToUserId = @"in_reply_to_user_id";
NSString *const kMy_WeiboIsShowBulletin = @"is_show_bulletin";
NSString *const kMy_WeiboText = @"text";
NSString *const kMy_WeiboBizFeature = @"biz_feature";
NSString *const kMy_WeiboMlevel = @"mlevel";
NSString *const kMy_WeiboCreatedAt = @"created_at";
NSString *const kMy_WeiboVisible = @"visible";
NSString *const kMy_WeiboInReplyToStatusId = @"in_reply_to_status_id";


@interface My_Weibo ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation My_Weibo

@synthesize attitudesCount = _attitudesCount;
@synthesize source = _source;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize hasActionTypeCard = _hasActionTypeCard;
@synthesize mid = _mid;
@synthesize idstr = _idstr;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize sourceAllowclick = _sourceAllowclick;
@synthesize truncated = _truncated;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize darwinTags = _darwinTags;
@synthesize commentsCount = _commentsCount;
@synthesize positiveRecomFlag = _positiveRecomFlag;
@synthesize picUrls = _picUrls;
@synthesize isLongText = _isLongText;
@synthesize userType = _userType;
@synthesize favorited = _favorited;
@synthesize repostsCount = _repostsCount;
@synthesize textTagTips = _textTagTips;
@synthesize gifIds = _gifIds;
@synthesize geo = _geo;
@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize user = _user;
@synthesize inReplyToUserId = _inReplyToUserId;
@synthesize isShowBulletin = _isShowBulletin;
@synthesize text = _text;
@synthesize bizFeature = _bizFeature;
@synthesize mlevel = _mlevel;
@synthesize createdAt = _createdAt;
@synthesize visible = _visible;
@synthesize inReplyToStatusId = _inReplyToStatusId;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.attitudesCount = [[self objectOrNilForKey:kMy_WeiboAttitudesCount fromDictionary:dict] doubleValue];
            self.source = [self objectOrNilForKey:kMy_WeiboSource fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kMy_WeiboTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kMy_WeiboSourceType fromDictionary:dict] doubleValue];
            self.hasActionTypeCard = [[self objectOrNilForKey:kMy_WeiboHasActionTypeCard fromDictionary:dict] doubleValue];
            self.mid = [self objectOrNilForKey:kMy_WeiboMid fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kMy_WeiboIdstr fromDictionary:dict];
            self.hotWeiboTags = [self objectOrNilForKey:kMy_WeiboHotWeiboTags fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kMy_WeiboSourceAllowclick fromDictionary:dict] doubleValue];
            self.truncated = [[self objectOrNilForKey:kMy_WeiboTruncated fromDictionary:dict] boolValue];
            self.inReplyToScreenName = [self objectOrNilForKey:kMy_WeiboInReplyToScreenName fromDictionary:dict];
            self.darwinTags = [self objectOrNilForKey:kMy_WeiboDarwinTags fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kMy_WeiboCommentsCount fromDictionary:dict] doubleValue];
            self.positiveRecomFlag = [[self objectOrNilForKey:kMy_WeiboPositiveRecomFlag fromDictionary:dict] doubleValue];
            self.picUrls = [self objectOrNilForKey:kMy_WeiboPicUrls fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kMy_WeiboIsLongText fromDictionary:dict] boolValue];
            self.userType = [[self objectOrNilForKey:kMy_WeiboUserType fromDictionary:dict] doubleValue];
            self.favorited = [[self objectOrNilForKey:kMy_WeiboFavorited fromDictionary:dict] boolValue];
            self.repostsCount = [[self objectOrNilForKey:kMy_WeiboRepostsCount fromDictionary:dict] doubleValue];
            self.textTagTips = [self objectOrNilForKey:kMy_WeiboTextTagTips fromDictionary:dict];
            self.gifIds = [self objectOrNilForKey:kMy_WeiboGifIds fromDictionary:dict];
            self.geo = [self objectOrNilForKey:kMy_WeiboGeo fromDictionary:dict];
            self.internalBaseClassIdentifier = [[self objectOrNilForKey:kMy_WeiboId fromDictionary:dict] doubleValue];
            self.user = [User modelObjectWithDictionary:[dict objectForKey:kMy_WeiboUser]];
            self.inReplyToUserId = [self objectOrNilForKey:kMy_WeiboInReplyToUserId fromDictionary:dict];
            self.isShowBulletin = [[self objectOrNilForKey:kMy_WeiboIsShowBulletin fromDictionary:dict] doubleValue];
            self.text = [self objectOrNilForKey:kMy_WeiboText fromDictionary:dict];
            self.bizFeature = [[self objectOrNilForKey:kMy_WeiboBizFeature fromDictionary:dict] doubleValue];
            self.mlevel = [[self objectOrNilForKey:kMy_WeiboMlevel fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kMy_WeiboCreatedAt fromDictionary:dict];
            self.visible = [Visible modelObjectWithDictionary:[dict objectForKey:kMy_WeiboVisible]];
            self.inReplyToStatusId = [self objectOrNilForKey:kMy_WeiboInReplyToStatusId fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kMy_WeiboAttitudesCount];
    [mutableDict setValue:self.source forKey:kMy_WeiboSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kMy_WeiboTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kMy_WeiboSourceType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasActionTypeCard] forKey:kMy_WeiboHasActionTypeCard];
    [mutableDict setValue:self.mid forKey:kMy_WeiboMid];
    [mutableDict setValue:self.idstr forKey:kMy_WeiboIdstr];
    NSMutableArray *tempArrayForHotWeiboTags = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.hotWeiboTags) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForHotWeiboTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForHotWeiboTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kMy_WeiboHotWeiboTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kMy_WeiboSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kMy_WeiboTruncated];
    [mutableDict setValue:self.inReplyToScreenName forKey:kMy_WeiboInReplyToScreenName];
    NSMutableArray *tempArrayForDarwinTags = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.darwinTags) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDarwinTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDarwinTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kMy_WeiboDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kMy_WeiboCommentsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.positiveRecomFlag] forKey:kMy_WeiboPositiveRecomFlag];
    NSMutableArray *tempArrayForPicUrls = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.picUrls) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPicUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPicUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kMy_WeiboPicUrls];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kMy_WeiboIsLongText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kMy_WeiboUserType];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kMy_WeiboFavorited];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kMy_WeiboRepostsCount];
    NSMutableArray *tempArrayForTextTagTips = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.textTagTips) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTextTagTips addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTextTagTips addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kMy_WeiboTextTagTips];
    [mutableDict setValue:self.gifIds forKey:kMy_WeiboGifIds];
    [mutableDict setValue:self.geo forKey:kMy_WeiboGeo];
    [mutableDict setValue:[NSNumber numberWithDouble:self.internalBaseClassIdentifier] forKey:kMy_WeiboId];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kMy_WeiboUser];
    [mutableDict setValue:self.inReplyToUserId forKey:kMy_WeiboInReplyToUserId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isShowBulletin] forKey:kMy_WeiboIsShowBulletin];
    [mutableDict setValue:self.text forKey:kMy_WeiboText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kMy_WeiboBizFeature];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kMy_WeiboMlevel];
    [mutableDict setValue:self.createdAt forKey:kMy_WeiboCreatedAt];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kMy_WeiboVisible];
    [mutableDict setValue:self.inReplyToStatusId forKey:kMy_WeiboInReplyToStatusId];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.attitudesCount = [aDecoder decodeDoubleForKey:kMy_WeiboAttitudesCount];
    self.source = [aDecoder decodeObjectForKey:kMy_WeiboSource];
    self.textLength = [aDecoder decodeDoubleForKey:kMy_WeiboTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kMy_WeiboSourceType];
    self.hasActionTypeCard = [aDecoder decodeDoubleForKey:kMy_WeiboHasActionTypeCard];
    self.mid = [aDecoder decodeObjectForKey:kMy_WeiboMid];
    self.idstr = [aDecoder decodeObjectForKey:kMy_WeiboIdstr];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kMy_WeiboHotWeiboTags];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kMy_WeiboSourceAllowclick];
    self.truncated = [aDecoder decodeBoolForKey:kMy_WeiboTruncated];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kMy_WeiboInReplyToScreenName];
    self.darwinTags = [aDecoder decodeObjectForKey:kMy_WeiboDarwinTags];
    self.commentsCount = [aDecoder decodeDoubleForKey:kMy_WeiboCommentsCount];
    self.positiveRecomFlag = [aDecoder decodeDoubleForKey:kMy_WeiboPositiveRecomFlag];
    self.picUrls = [aDecoder decodeObjectForKey:kMy_WeiboPicUrls];
    self.isLongText = [aDecoder decodeBoolForKey:kMy_WeiboIsLongText];
    self.userType = [aDecoder decodeDoubleForKey:kMy_WeiboUserType];
    self.favorited = [aDecoder decodeBoolForKey:kMy_WeiboFavorited];
    self.repostsCount = [aDecoder decodeDoubleForKey:kMy_WeiboRepostsCount];
    self.textTagTips = [aDecoder decodeObjectForKey:kMy_WeiboTextTagTips];
    self.gifIds = [aDecoder decodeObjectForKey:kMy_WeiboGifIds];
    self.geo = [aDecoder decodeObjectForKey:kMy_WeiboGeo];
    self.internalBaseClassIdentifier = [aDecoder decodeDoubleForKey:kMy_WeiboId];
    self.user = [aDecoder decodeObjectForKey:kMy_WeiboUser];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kMy_WeiboInReplyToUserId];
    self.isShowBulletin = [aDecoder decodeDoubleForKey:kMy_WeiboIsShowBulletin];
    self.text = [aDecoder decodeObjectForKey:kMy_WeiboText];
    self.bizFeature = [aDecoder decodeDoubleForKey:kMy_WeiboBizFeature];
    self.mlevel = [aDecoder decodeDoubleForKey:kMy_WeiboMlevel];
    self.createdAt = [aDecoder decodeObjectForKey:kMy_WeiboCreatedAt];
    self.visible = [aDecoder decodeObjectForKey:kMy_WeiboVisible];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kMy_WeiboInReplyToStatusId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_attitudesCount forKey:kMy_WeiboAttitudesCount];
    [aCoder encodeObject:_source forKey:kMy_WeiboSource];
    [aCoder encodeDouble:_textLength forKey:kMy_WeiboTextLength];
    [aCoder encodeDouble:_sourceType forKey:kMy_WeiboSourceType];
    [aCoder encodeDouble:_hasActionTypeCard forKey:kMy_WeiboHasActionTypeCard];
    [aCoder encodeObject:_mid forKey:kMy_WeiboMid];
    [aCoder encodeObject:_idstr forKey:kMy_WeiboIdstr];
    [aCoder encodeObject:_hotWeiboTags forKey:kMy_WeiboHotWeiboTags];
    [aCoder encodeDouble:_sourceAllowclick forKey:kMy_WeiboSourceAllowclick];
    [aCoder encodeBool:_truncated forKey:kMy_WeiboTruncated];
    [aCoder encodeObject:_inReplyToScreenName forKey:kMy_WeiboInReplyToScreenName];
    [aCoder encodeObject:_darwinTags forKey:kMy_WeiboDarwinTags];
    [aCoder encodeDouble:_commentsCount forKey:kMy_WeiboCommentsCount];
    [aCoder encodeDouble:_positiveRecomFlag forKey:kMy_WeiboPositiveRecomFlag];
    [aCoder encodeObject:_picUrls forKey:kMy_WeiboPicUrls];
    [aCoder encodeBool:_isLongText forKey:kMy_WeiboIsLongText];
    [aCoder encodeDouble:_userType forKey:kMy_WeiboUserType];
    [aCoder encodeBool:_favorited forKey:kMy_WeiboFavorited];
    [aCoder encodeDouble:_repostsCount forKey:kMy_WeiboRepostsCount];
    [aCoder encodeObject:_textTagTips forKey:kMy_WeiboTextTagTips];
    [aCoder encodeObject:_gifIds forKey:kMy_WeiboGifIds];
    [aCoder encodeObject:_geo forKey:kMy_WeiboGeo];
    [aCoder encodeDouble:_internalBaseClassIdentifier forKey:kMy_WeiboId];
    [aCoder encodeObject:_user forKey:kMy_WeiboUser];
    [aCoder encodeObject:_inReplyToUserId forKey:kMy_WeiboInReplyToUserId];
    [aCoder encodeDouble:_isShowBulletin forKey:kMy_WeiboIsShowBulletin];
    [aCoder encodeObject:_text forKey:kMy_WeiboText];
    [aCoder encodeDouble:_bizFeature forKey:kMy_WeiboBizFeature];
    [aCoder encodeDouble:_mlevel forKey:kMy_WeiboMlevel];
    [aCoder encodeObject:_createdAt forKey:kMy_WeiboCreatedAt];
    [aCoder encodeObject:_visible forKey:kMy_WeiboVisible];
    [aCoder encodeObject:_inReplyToStatusId forKey:kMy_WeiboInReplyToStatusId];
}

- (id)copyWithZone:(NSZone *)zone {
    My_Weibo *copy = [[My_Weibo alloc] init];
    
    
    
    if (copy) {

        copy.attitudesCount = self.attitudesCount;
        copy.source = [self.source copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.hasActionTypeCard = self.hasActionTypeCard;
        copy.mid = [self.mid copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.sourceAllowclick = self.sourceAllowclick;
        copy.truncated = self.truncated;
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.darwinTags = [self.darwinTags copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.positiveRecomFlag = self.positiveRecomFlag;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.userType = self.userType;
        copy.favorited = self.favorited;
        copy.repostsCount = self.repostsCount;
        copy.textTagTips = [self.textTagTips copyWithZone:zone];
        copy.gifIds = [self.gifIds copyWithZone:zone];
//        copy.geo = [self.geo copyWithZone:zone];
        copy.internalBaseClassIdentifier = self.internalBaseClassIdentifier;
        copy.user = [self.user copyWithZone:zone];
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.isShowBulletin = self.isShowBulletin;
        copy.text = [self.text copyWithZone:zone];
        copy.bizFeature = self.bizFeature;
        copy.mlevel = self.mlevel;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.visible = [self.visible copyWithZone:zone];
        copy.inReplyToStatusId = [self.inReplyToStatusId copyWithZone:zone];
    }
    
    return copy;
}


@end
