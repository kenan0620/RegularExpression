//
//  ConanRegularExp.h
//  ConanRegularExp
//
//  Created by Conan on 2017/3/3.
//  Copyright © 2017年 Conan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConanRegularExp : NSObject

/**
 *  1、精确验证身份证号
 *
 *  @param identityCard 身份证号
 *
 *  @return 是否是身份证号
 */
+ (BOOL) ConanRegularExpressionchecking_PrecisieIdentityCard:(NSString *)identityCard;

/**
 *  2、密码验证(不含特殊符号)
 *
 *  @param shortest 最短长度
 *  @param longest  最长长度
 *  @param pwd      密码
 *
 *  @return 结果
 */
+(BOOL)ConanRegularExpressionchecking_PasswordWithShortest:(NSInteger)shortest
                                                   longest:(NSInteger)longest
                                                  password:(NSString *)pwd;

/**
 *  3、校验只能输入n位的数字
 *
 *  @param length n位
 *  @param number 数字
 */
+ (BOOL)ConanRegularExpressionchecking_NumberWithLength:(NSString *)length number:(NSString *)number;

/**
 *  4、校验最少输入n位的数字
 *
 *  @param leastLength n位
 *  @param number 数字
 */
+ (BOOL)ConanRegularExpressionchecking_NumberWithLeastLength:(NSString *)leastLength number:(NSString *)number;


/**
 *  5、银行卡号
 *
 *  @param bankNumber 银行卡号
 *
 *  @return 是否是银行卡号
 */
+ (BOOL)ConanRegularExpressionchecking_BankNumber:(NSString *)bankNumber;

+ (BOOL)ConanRegularExpressionchecking_SpecialChar:(NSString *)data;
@end
