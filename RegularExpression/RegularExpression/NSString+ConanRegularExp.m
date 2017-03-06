//
//  NSString+ConanRegularExp.m
//  ConanRegularExp
//
//  Created by Conan on 2017/3/3.
//  Copyright © 2017年 Conan. All rights reserved.
//

#import "NSString+ConanRegularExp.h"
#import "ConanRegularExpression.h"

@implementation NSString (ConanRegularExp)
/**
 *  1、邮箱验证
 */
-(BOOL)ConanRegularExpressionchecking_Email
{
    return  [self baseCheckForRegEx:ConanEmail];
}

/**
 *  2、IP地址验证
 */
-(BOOL)ConanRegularExpressionchecking_IPAddress
{
    NSString *regex = [NSString stringWithFormat:@"%@",ConanIpAddress];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL rc = [pre evaluateWithObject:self];
    
    if (rc) {
        NSArray *componds = [self componentsSeparatedByString:@","];
        
        BOOL v = YES;
        for (NSString *s in componds) {
            if (s.integerValue > 255) {
                v = NO;
                break;
            }
        }
        
        return v;
    }
    
    return NO;

}

/**
 *  3、电话号验证(固话)
 */
-(BOOL)ConanRegularExpressionchecking_TellPhoneNum
{
    return [self baseCheckForRegEx:ConanTellPhoneNum];
}

/**
 *  4、
 */
-(BOOL)ConanRegularExpressionchecking_
{
    return [self baseCheckForRegEx:ConanIdCard];
}

/**
 *  5、由数字和26个英文字母组成的字符串(不含特殊符号)
 *
 */
-(BOOL)ConanRegularExpressionchecking_StrFormNumberAndLetter
{
    return [self baseCheckForRegEx:ConanStrFormNumberAndLetter];
}

/**
 *  6、校验只能输入由26个大小写英文字母组成的字符串
 */
-(BOOL)ConanRegularExpressionchecking_StrFormLowerAndUpperLetter
{
    return [self baseCheckForRegEx:ConanStrFormLowerAndUpperLetter];
}


/**
 *  7、校验只能输入小写字母
 */
-(BOOL)ConanRegularExpressionchecking_LowerLetter
{
    return [self baseCheckForRegEx:ConanLowerLetter];
}

/**
 *  8、校验只能输入大写字母
 */
-(BOOL)ConanRegularExpressionchecking_UpperLetter
{
    return [self baseCheckForRegEx:ConanUpperLetter];
}


/**
 *  9、是否含有特殊字符(%&’,;=?$\等)
 */
-(BOOL)ConanRegularExpressionchecking_SpecialChar
{
    return [self baseCheckForRegEx:ConanSpecialChar];
}


/**
 *  10、校验只能输入数字
 */
-(BOOL)ConanRegularExpressionchecking_Number
{
    return [self baseCheckForRegEx:ConanNumber];
}

/**
 *  11、正则匹配验证码为6位数字
 */
-(BOOL)ConanRegularExpressionchecking_Code
{
    return [self baseCheckForRegEx:ConanCode];
}

/**
 *  12、车牌号验证
 */
-(BOOL)ConanRegularExpressionchecking_CarNo
{
    return [self baseCheckForRegEx:ConanCarNo];
}

/**
 *  13、车型验证验证
 */
-(BOOL)ConanRegularExpressionchecking_CarType
{
    return [self baseCheckForRegEx:ConanCarType];
}

/**
 *  14、MAC地址验证
 */
-(BOOL)ConanRegularExpressionchecking_MacAddress
{
    return [self baseCheckForRegEx:ConanMacAddress];
}

/**
 *  15、手机号有效性
 */
-(BOOL)ConanRegularExpressionchecking_PhoneNumber
{
    if (self.length != 11) {
        return NO;
    }
    
    /**
     * 手机号码:
     * 13[0-9], 14[5,7], 15[0, 1, 2, 3, 5, 6, 7, 8, 9], 17[6, 7, 8], 18[0-9], 170[0-9]
     * 移动号段: 134,135,136,137,138,139,147,150,151,152,157,158,159,1705,178,182,183,184,187,188
     * 联通号段: 130,131,132,145,155,156,1709,176,185,186
     * 电信号段: 133,1349`,153,1700,177,180,181,189
     */
    if ([self baseCheckForRegEx:ConanChinaMobile] || [self baseCheckForRegEx:ConanChinaUnicom] || [self baseCheckForRegEx:ConanChinaTelecom])
        return YES;
    else
        return NO;

}

/**
 *  16、是否属于中国移动
 */
-(BOOL)ConanRegularExpressionchecking_ChinaMobile
{
    return [self baseCheckForRegEx:ConanChinaMobile];
}

/**
 *  17、是否属于中国联通
 */
-(BOOL)ConanRegularExpressionchecking_ChinaUnicom
{
    return [self baseCheckForRegEx:ConanChinaUnicom];
}

/**
 *  18、是否属于中国电信
 */
-(BOOL)ConanRegularExpressionchecking_ChinaTelecom
{
    return [self baseCheckForRegEx:ConanChinaTelecom];
}

/**
 *  19、是否是小灵通
 */
-(BOOL)ConanRegularExpressionchecking_SpecialPlane
{
    return [self baseCheckForRegEx:ConanPHS];
}

/**
 *  20、获取运营商
 */
-(NSString *)ConanRegularExpressionchecking_PhoneNumType
{
    return [self ConanRegularExpressionchecking_ChinaMobile]? @"中国移动": ([self ConanRegularExpressionchecking_ChinaUnicom]? @"中国联通":([self ConanRegularExpressionchecking_ChinaTelecom]? @"中国电信": @"未知"));
}

/**
 *  21、网址
 */
-(BOOL)ConanRegularExpressionchecking_URL
{
    return  [self baseCheckForRegEx:ConanURL];
}

/**
 *  22、邮政编码
 */
-(BOOL)ConanRegularExpressionchecking_Postalcode
{
    return  [self baseCheckForRegEx:ConanPostalcode];
}

#pragma mark 进行系统校验
/**
 *  基本的验证方法
 *
 *  @param regEx 校验格式
 *  @return YES:成功 NO:失败
 */

-(BOOL)baseCheckForRegEx:(NSString *)regEx {
    
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regEx];
    return [pre evaluateWithObject:self];
}

#pragma mark 常用正则表达式


@end
