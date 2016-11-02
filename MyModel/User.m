//
//  User.m
//
//  Created by xt  on 16/10/28
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "User.h"


NSString *const kUserMbtype = @"mbtype";
NSString *const kUserAllowAllComment = @"allow_all_comment";
NSString *const kUserAllowAllActMsg = @"allow_all_act_msg";
NSString *const kUserClass = @"class";
NSString *const kUserId = @"id";
NSString *const kUserProfileImageUrl = @"profile_image_url";
NSString *const kUserVerifiedTrade = @"verified_trade";
NSString *const kUserAvatarLarge = @"avatar_large";
NSString *const kUserCreatedAt = @"created_at";
NSString *const kUserRemark = @"remark";
NSString *const kUserVerifiedReason = @"verified_reason";
NSString *const kUserLocation = @"location";
NSString *const kUserLang = @"lang";
NSString *const kUserUrl = @"url";
NSString *const kUserIdstr = @"idstr";
NSString *const kUserFollowMe = @"follow_me";
NSString *const kUserBiFollowersCount = @"bi_followers_count";
NSString *const kUserGeoEnabled = @"geo_enabled";
NSString *const kUserCreditScore = @"credit_score";
NSString *const kUserFollowersCount = @"followers_count";
NSString *const kUserVerifiedSourceUrl = @"verified_source_url";
NSString *const kUserDescription = @"description";
NSString *const kUserBlockWord = @"block_word";
NSString *const kUserStatusesCount = @"statuses_count";
NSString *const kUserFollowing = @"following";
NSString *const kUserVerifiedType = @"verified_type";
NSString *const kUserAvatarHd = @"avatar_hd";
NSString *const kUserStar = @"star";
NSString *const kUserName = @"name";
NSString *const kUserDomain = @"domain";
NSString *const kUserCity = @"city";
NSString *const kUserBlockApp = @"block_app";
NSString *const kUserOnlineStatus = @"online_status";
NSString *const kUserUrank = @"urank";
NSString *const kUserVerifiedReasonUrl = @"verified_reason_url";
NSString *const kUserScreenName = @"screen_name";
NSString *const kUserProvince = @"province";
NSString *const kUserVerifiedSource = @"verified_source";
NSString *const kUserWeihao = @"weihao";
NSString *const kUserGender = @"gender";
NSString *const kUserPagefriendsCount = @"pagefriends_count";
NSString *const kUserFavouritesCount = @"favourites_count";
NSString *const kUserMbrank = @"mbrank";
NSString *const kUserProfileUrl = @"profile_url";
NSString *const kUserUserAbility = @"user_ability";
NSString *const kUserPtype = @"ptype";
NSString *const kUserFriendsCount = @"friends_count";
NSString *const kUserVerified = @"verified";


@interface User ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation User

@synthesize mbtype = _mbtype;
@synthesize allowAllComment = _allowAllComment;
@synthesize allowAllActMsg = _allowAllActMsg;
@synthesize classProperty = _classProperty;
@synthesize userIdentifier = _userIdentifier;
@synthesize profileImageUrl = _profileImageUrl;
@synthesize verifiedTrade = _verifiedTrade;
@synthesize avatarLarge = _avatarLarge;
@synthesize createdAt = _createdAt;
@synthesize remark = _remark;
@synthesize verifiedReason = _verifiedReason;
@synthesize location = _location;
@synthesize lang = _lang;
@synthesize url = _url;
@synthesize idstr = _idstr;
@synthesize followMe = _followMe;
@synthesize biFollowersCount = _biFollowersCount;
@synthesize geoEnabled = _geoEnabled;
@synthesize creditScore = _creditScore;
@synthesize followersCount = _followersCount;
@synthesize verifiedSourceUrl = _verifiedSourceUrl;
@synthesize userDescription = _userDescription;
@synthesize blockWord = _blockWord;
@synthesize statusesCount = _statusesCount;
@synthesize following = _following;
@synthesize verifiedType = _verifiedType;
@synthesize avatarHd = _avatarHd;
@synthesize star = _star;
@synthesize name = _name;
@synthesize domain = _domain;
@synthesize city = _city;
@synthesize blockApp = _blockApp;
@synthesize onlineStatus = _onlineStatus;
@synthesize urank = _urank;
@synthesize verifiedReasonUrl = _verifiedReasonUrl;
@synthesize screenName = _screenName;
@synthesize province = _province;
@synthesize verifiedSource = _verifiedSource;
@synthesize weihao = _weihao;
@synthesize gender = _gender;
@synthesize pagefriendsCount = _pagefriendsCount;
@synthesize favouritesCount = _favouritesCount;
@synthesize mbrank = _mbrank;
@synthesize profileUrl = _profileUrl;
@synthesize userAbility = _userAbility;
@synthesize ptype = _ptype;
@synthesize friendsCount = _friendsCount;
@synthesize verified = _verified;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.mbtype = [[self objectOrNilForKey:kUserMbtype fromDictionary:dict] doubleValue];
            self.allowAllComment = [[self objectOrNilForKey:kUserAllowAllComment fromDictionary:dict] boolValue];
            self.allowAllActMsg = [[self objectOrNilForKey:kUserAllowAllActMsg fromDictionary:dict] boolValue];
            self.classProperty = [[self objectOrNilForKey:kUserClass fromDictionary:dict] doubleValue];
            self.userIdentifier = [[self objectOrNilForKey:kUserId fromDictionary:dict] doubleValue];
            self.profileImageUrl = [self objectOrNilForKey:kUserProfileImageUrl fromDictionary:dict];
            self.verifiedTrade = [self objectOrNilForKey:kUserVerifiedTrade fromDictionary:dict];
            self.avatarLarge = [self objectOrNilForKey:kUserAvatarLarge fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kUserCreatedAt fromDictionary:dict];
            self.remark = [self objectOrNilForKey:kUserRemark fromDictionary:dict];
            self.verifiedReason = [self objectOrNilForKey:kUserVerifiedReason fromDictionary:dict];
            self.location = [self objectOrNilForKey:kUserLocation fromDictionary:dict];
            self.lang = [self objectOrNilForKey:kUserLang fromDictionary:dict];
            self.url = [self objectOrNilForKey:kUserUrl fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kUserIdstr fromDictionary:dict];
            self.followMe = [[self objectOrNilForKey:kUserFollowMe fromDictionary:dict] boolValue];
            self.biFollowersCount = [[self objectOrNilForKey:kUserBiFollowersCount fromDictionary:dict] doubleValue];
            self.geoEnabled = [[self objectOrNilForKey:kUserGeoEnabled fromDictionary:dict] boolValue];
            self.creditScore = [[self objectOrNilForKey:kUserCreditScore fromDictionary:dict] doubleValue];
            self.followersCount = [[self objectOrNilForKey:kUserFollowersCount fromDictionary:dict] doubleValue];
            self.verifiedSourceUrl = [self objectOrNilForKey:kUserVerifiedSourceUrl fromDictionary:dict];
            self.userDescription = [self objectOrNilForKey:kUserDescription fromDictionary:dict];
            self.blockWord = [[self objectOrNilForKey:kUserBlockWord fromDictionary:dict] doubleValue];
            self.statusesCount = [[self objectOrNilForKey:kUserStatusesCount fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kUserFollowing fromDictionary:dict] boolValue];
            self.verifiedType = [[self objectOrNilForKey:kUserVerifiedType fromDictionary:dict] doubleValue];
            self.avatarHd = [self objectOrNilForKey:kUserAvatarHd fromDictionary:dict];
            self.star = [[self objectOrNilForKey:kUserStar fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kUserName fromDictionary:dict];
            self.domain = [self objectOrNilForKey:kUserDomain fromDictionary:dict];
            self.city = [self objectOrNilForKey:kUserCity fromDictionary:dict];
            self.blockApp = [[self objectOrNilForKey:kUserBlockApp fromDictionary:dict] doubleValue];
            self.onlineStatus = [[self objectOrNilForKey:kUserOnlineStatus fromDictionary:dict] doubleValue];
            self.urank = [[self objectOrNilForKey:kUserUrank fromDictionary:dict] doubleValue];
            self.verifiedReasonUrl = [self objectOrNilForKey:kUserVerifiedReasonUrl fromDictionary:dict];
            self.screenName = [self objectOrNilForKey:kUserScreenName fromDictionary:dict];
            self.province = [self objectOrNilForKey:kUserProvince fromDictionary:dict];
            self.verifiedSource = [self objectOrNilForKey:kUserVerifiedSource fromDictionary:dict];
            self.weihao = [self objectOrNilForKey:kUserWeihao fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kUserGender fromDictionary:dict];
            self.pagefriendsCount = [[self objectOrNilForKey:kUserPagefriendsCount fromDictionary:dict] doubleValue];
            self.favouritesCount = [[self objectOrNilForKey:kUserFavouritesCount fromDictionary:dict] doubleValue];
            self.mbrank = [[self objectOrNilForKey:kUserMbrank fromDictionary:dict] doubleValue];
            self.profileUrl = [self objectOrNilForKey:kUserProfileUrl fromDictionary:dict];
            self.userAbility = [[self objectOrNilForKey:kUserUserAbility fromDictionary:dict] doubleValue];
            self.ptype = [[self objectOrNilForKey:kUserPtype fromDictionary:dict] doubleValue];
            self.friendsCount = [[self objectOrNilForKey:kUserFriendsCount fromDictionary:dict] doubleValue];
            self.verified = [[self objectOrNilForKey:kUserVerified fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbtype] forKey:kUserMbtype];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllComment] forKey:kUserAllowAllComment];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllActMsg] forKey:kUserAllowAllActMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.classProperty] forKey:kUserClass];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userIdentifier] forKey:kUserId];
    [mutableDict setValue:self.profileImageUrl forKey:kUserProfileImageUrl];
    [mutableDict setValue:self.verifiedTrade forKey:kUserVerifiedTrade];
    [mutableDict setValue:self.avatarLarge forKey:kUserAvatarLarge];
    [mutableDict setValue:self.createdAt forKey:kUserCreatedAt];
    [mutableDict setValue:self.remark forKey:kUserRemark];
    [mutableDict setValue:self.verifiedReason forKey:kUserVerifiedReason];
    [mutableDict setValue:self.location forKey:kUserLocation];
    [mutableDict setValue:self.lang forKey:kUserLang];
    [mutableDict setValue:self.url forKey:kUserUrl];
    [mutableDict setValue:self.idstr forKey:kUserIdstr];
    [mutableDict setValue:[NSNumber numberWithBool:self.followMe] forKey:kUserFollowMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.biFollowersCount] forKey:kUserBiFollowersCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.geoEnabled] forKey:kUserGeoEnabled];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creditScore] forKey:kUserCreditScore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followersCount] forKey:kUserFollowersCount];
    [mutableDict setValue:self.verifiedSourceUrl forKey:kUserVerifiedSourceUrl];
    [mutableDict setValue:self.userDescription forKey:kUserDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockWord] forKey:kUserBlockWord];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesCount] forKey:kUserStatusesCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.following] forKey:kUserFollowing];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedType] forKey:kUserVerifiedType];
    [mutableDict setValue:self.avatarHd forKey:kUserAvatarHd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.star] forKey:kUserStar];
    [mutableDict setValue:self.name forKey:kUserName];
    [mutableDict setValue:self.domain forKey:kUserDomain];
    [mutableDict setValue:self.city forKey:kUserCity];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockApp] forKey:kUserBlockApp];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineStatus] forKey:kUserOnlineStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urank] forKey:kUserUrank];
    [mutableDict setValue:self.verifiedReasonUrl forKey:kUserVerifiedReasonUrl];
    [mutableDict setValue:self.screenName forKey:kUserScreenName];
    [mutableDict setValue:self.province forKey:kUserProvince];
    [mutableDict setValue:self.verifiedSource forKey:kUserVerifiedSource];
    [mutableDict setValue:self.weihao forKey:kUserWeihao];
    [mutableDict setValue:self.gender forKey:kUserGender];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pagefriendsCount] forKey:kUserPagefriendsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favouritesCount] forKey:kUserFavouritesCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbrank] forKey:kUserMbrank];
    [mutableDict setValue:self.profileUrl forKey:kUserProfileUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userAbility] forKey:kUserUserAbility];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ptype] forKey:kUserPtype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.friendsCount] forKey:kUserFriendsCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.verified] forKey:kUserVerified];

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

    self.mbtype = [aDecoder decodeDoubleForKey:kUserMbtype];
    self.allowAllComment = [aDecoder decodeBoolForKey:kUserAllowAllComment];
    self.allowAllActMsg = [aDecoder decodeBoolForKey:kUserAllowAllActMsg];
    self.classProperty = [aDecoder decodeDoubleForKey:kUserClass];
    self.userIdentifier = [aDecoder decodeDoubleForKey:kUserId];
    self.profileImageUrl = [aDecoder decodeObjectForKey:kUserProfileImageUrl];
    self.verifiedTrade = [aDecoder decodeObjectForKey:kUserVerifiedTrade];
    self.avatarLarge = [aDecoder decodeObjectForKey:kUserAvatarLarge];
    self.createdAt = [aDecoder decodeObjectForKey:kUserCreatedAt];
    self.remark = [aDecoder decodeObjectForKey:kUserRemark];
    self.verifiedReason = [aDecoder decodeObjectForKey:kUserVerifiedReason];
    self.location = [aDecoder decodeObjectForKey:kUserLocation];
    self.lang = [aDecoder decodeObjectForKey:kUserLang];
    self.url = [aDecoder decodeObjectForKey:kUserUrl];
    self.idstr = [aDecoder decodeObjectForKey:kUserIdstr];
    self.followMe = [aDecoder decodeBoolForKey:kUserFollowMe];
    self.biFollowersCount = [aDecoder decodeDoubleForKey:kUserBiFollowersCount];
    self.geoEnabled = [aDecoder decodeBoolForKey:kUserGeoEnabled];
    self.creditScore = [aDecoder decodeDoubleForKey:kUserCreditScore];
    self.followersCount = [aDecoder decodeDoubleForKey:kUserFollowersCount];
    self.verifiedSourceUrl = [aDecoder decodeObjectForKey:kUserVerifiedSourceUrl];
    self.userDescription = [aDecoder decodeObjectForKey:kUserDescription];
    self.blockWord = [aDecoder decodeDoubleForKey:kUserBlockWord];
    self.statusesCount = [aDecoder decodeDoubleForKey:kUserStatusesCount];
    self.following = [aDecoder decodeBoolForKey:kUserFollowing];
    self.verifiedType = [aDecoder decodeDoubleForKey:kUserVerifiedType];
    self.avatarHd = [aDecoder decodeObjectForKey:kUserAvatarHd];
    self.star = [aDecoder decodeDoubleForKey:kUserStar];
    self.name = [aDecoder decodeObjectForKey:kUserName];
    self.domain = [aDecoder decodeObjectForKey:kUserDomain];
    self.city = [aDecoder decodeObjectForKey:kUserCity];
    self.blockApp = [aDecoder decodeDoubleForKey:kUserBlockApp];
    self.onlineStatus = [aDecoder decodeDoubleForKey:kUserOnlineStatus];
    self.urank = [aDecoder decodeDoubleForKey:kUserUrank];
    self.verifiedReasonUrl = [aDecoder decodeObjectForKey:kUserVerifiedReasonUrl];
    self.screenName = [aDecoder decodeObjectForKey:kUserScreenName];
    self.province = [aDecoder decodeObjectForKey:kUserProvince];
    self.verifiedSource = [aDecoder decodeObjectForKey:kUserVerifiedSource];
    self.weihao = [aDecoder decodeObjectForKey:kUserWeihao];
    self.gender = [aDecoder decodeObjectForKey:kUserGender];
    self.pagefriendsCount = [aDecoder decodeDoubleForKey:kUserPagefriendsCount];
    self.favouritesCount = [aDecoder decodeDoubleForKey:kUserFavouritesCount];
    self.mbrank = [aDecoder decodeDoubleForKey:kUserMbrank];
    self.profileUrl = [aDecoder decodeObjectForKey:kUserProfileUrl];
    self.userAbility = [aDecoder decodeDoubleForKey:kUserUserAbility];
    self.ptype = [aDecoder decodeDoubleForKey:kUserPtype];
    self.friendsCount = [aDecoder decodeDoubleForKey:kUserFriendsCount];
    self.verified = [aDecoder decodeBoolForKey:kUserVerified];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_mbtype forKey:kUserMbtype];
    [aCoder encodeBool:_allowAllComment forKey:kUserAllowAllComment];
    [aCoder encodeBool:_allowAllActMsg forKey:kUserAllowAllActMsg];
    [aCoder encodeDouble:_classProperty forKey:kUserClass];
    [aCoder encodeDouble:_userIdentifier forKey:kUserId];
    [aCoder encodeObject:_profileImageUrl forKey:kUserProfileImageUrl];
    [aCoder encodeObject:_verifiedTrade forKey:kUserVerifiedTrade];
    [aCoder encodeObject:_avatarLarge forKey:kUserAvatarLarge];
    [aCoder encodeObject:_createdAt forKey:kUserCreatedAt];
    [aCoder encodeObject:_remark forKey:kUserRemark];
    [aCoder encodeObject:_verifiedReason forKey:kUserVerifiedReason];
    [aCoder encodeObject:_location forKey:kUserLocation];
    [aCoder encodeObject:_lang forKey:kUserLang];
    [aCoder encodeObject:_url forKey:kUserUrl];
    [aCoder encodeObject:_idstr forKey:kUserIdstr];
    [aCoder encodeBool:_followMe forKey:kUserFollowMe];
    [aCoder encodeDouble:_biFollowersCount forKey:kUserBiFollowersCount];
    [aCoder encodeBool:_geoEnabled forKey:kUserGeoEnabled];
    [aCoder encodeDouble:_creditScore forKey:kUserCreditScore];
    [aCoder encodeDouble:_followersCount forKey:kUserFollowersCount];
    [aCoder encodeObject:_verifiedSourceUrl forKey:kUserVerifiedSourceUrl];
    [aCoder encodeObject:_userDescription forKey:kUserDescription];
    [aCoder encodeDouble:_blockWord forKey:kUserBlockWord];
    [aCoder encodeDouble:_statusesCount forKey:kUserStatusesCount];
    [aCoder encodeBool:_following forKey:kUserFollowing];
    [aCoder encodeDouble:_verifiedType forKey:kUserVerifiedType];
    [aCoder encodeObject:_avatarHd forKey:kUserAvatarHd];
    [aCoder encodeDouble:_star forKey:kUserStar];
    [aCoder encodeObject:_name forKey:kUserName];
    [aCoder encodeObject:_domain forKey:kUserDomain];
    [aCoder encodeObject:_city forKey:kUserCity];
    [aCoder encodeDouble:_blockApp forKey:kUserBlockApp];
    [aCoder encodeDouble:_onlineStatus forKey:kUserOnlineStatus];
    [aCoder encodeDouble:_urank forKey:kUserUrank];
    [aCoder encodeObject:_verifiedReasonUrl forKey:kUserVerifiedReasonUrl];
    [aCoder encodeObject:_screenName forKey:kUserScreenName];
    [aCoder encodeObject:_province forKey:kUserProvince];
    [aCoder encodeObject:_verifiedSource forKey:kUserVerifiedSource];
    [aCoder encodeObject:_weihao forKey:kUserWeihao];
    [aCoder encodeObject:_gender forKey:kUserGender];
    [aCoder encodeDouble:_pagefriendsCount forKey:kUserPagefriendsCount];
    [aCoder encodeDouble:_favouritesCount forKey:kUserFavouritesCount];
    [aCoder encodeDouble:_mbrank forKey:kUserMbrank];
    [aCoder encodeObject:_profileUrl forKey:kUserProfileUrl];
    [aCoder encodeDouble:_userAbility forKey:kUserUserAbility];
    [aCoder encodeDouble:_ptype forKey:kUserPtype];
    [aCoder encodeDouble:_friendsCount forKey:kUserFriendsCount];
    [aCoder encodeBool:_verified forKey:kUserVerified];
}

- (id)copyWithZone:(NSZone *)zone {
    User *copy = [[User alloc] init];
    
    
    
    if (copy) {

        copy.mbtype = self.mbtype;
        copy.allowAllComment = self.allowAllComment;
        copy.allowAllActMsg = self.allowAllActMsg;
        copy.classProperty = self.classProperty;
        copy.userIdentifier = self.userIdentifier;
        copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
        copy.verifiedTrade = [self.verifiedTrade copyWithZone:zone];
        copy.avatarLarge = [self.avatarLarge copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.remark = [self.remark copyWithZone:zone];
        copy.verifiedReason = [self.verifiedReason copyWithZone:zone];
        copy.location = [self.location copyWithZone:zone];
        copy.lang = [self.lang copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.followMe = self.followMe;
        copy.biFollowersCount = self.biFollowersCount;
        copy.geoEnabled = self.geoEnabled;
        copy.creditScore = self.creditScore;
        copy.followersCount = self.followersCount;
        copy.verifiedSourceUrl = [self.verifiedSourceUrl copyWithZone:zone];
        copy.userDescription = [self.userDescription copyWithZone:zone];
        copy.blockWord = self.blockWord;
        copy.statusesCount = self.statusesCount;
        copy.following = self.following;
        copy.verifiedType = self.verifiedType;
        copy.avatarHd = [self.avatarHd copyWithZone:zone];
        copy.star = self.star;
        copy.name = [self.name copyWithZone:zone];
        copy.domain = [self.domain copyWithZone:zone];
        copy.city = [self.city copyWithZone:zone];
        copy.blockApp = self.blockApp;
        copy.onlineStatus = self.onlineStatus;
        copy.urank = self.urank;
        copy.verifiedReasonUrl = [self.verifiedReasonUrl copyWithZone:zone];
        copy.screenName = [self.screenName copyWithZone:zone];
        copy.province = [self.province copyWithZone:zone];
        copy.verifiedSource = [self.verifiedSource copyWithZone:zone];
        copy.weihao = [self.weihao copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.pagefriendsCount = self.pagefriendsCount;
        copy.favouritesCount = self.favouritesCount;
        copy.mbrank = self.mbrank;
        copy.profileUrl = [self.profileUrl copyWithZone:zone];
        copy.userAbility = self.userAbility;
        copy.ptype = self.ptype;
        copy.friendsCount = self.friendsCount;
        copy.verified = self.verified;
    }
    
    return copy;
}


@end
