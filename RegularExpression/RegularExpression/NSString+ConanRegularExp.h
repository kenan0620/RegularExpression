//
//  NSString+ConanRegularExp.h
//  ConanRegularExp
//
//  Created by Conan on 2017/3/3.
//  Copyright © 2017年 Conan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ConanRegularExp)
/**
 *  1、邮箱验证
 */
-(BOOL)ConanRegularExpressionchecking_Email;

/**
 *  2、IP地址验证
 */
-(BOOL)ConanRegularExpressionchecking_IPAddress;

/**
 *  3、电话号验证
 */
-(BOOL)ConanRegularExpressionchecking_TellPhoneNum;

/**
 *  4、
 */
-(BOOL)ConanRegularExpressionchecking_;

/**
 *  5、由数字和26个英文字母组成的字符串(不含特殊符号)
 *
 */
-(BOOL)ConanRegularExpressionchecking_StrFormNumberAndLetter;

/**
 *  6、校验只能输入由26个大小写英文字母组成的字符串
 */
-(BOOL)ConanRegularExpressionchecking_StrFormLowerAndUpperLetter;


/**
 *  7、校验只能输入小写字母
 */
-(BOOL)ConanRegularExpressionchecking_LowerLetter;

/**
 *  8、校验只能输入大写字母
 */
-(BOOL)ConanRegularExpressionchecking_UpperLetter;


/**
 *  9、是否含有特殊字符(%&’,;=?$\等)
 */
-(BOOL)ConanRegularExpressionchecking_SpecialChar;


/**
 *  10、校验只能输入数字
 */
-(BOOL)ConanRegularExpressionchecking_Number;

/**
 *  11、正则匹配验证码为6位数字
 */
-(BOOL)ConanRegularExpressionchecking_Code;

/**
 *  12、车牌号验证
 */
-(BOOL)ConanRegularExpressionchecking_CarNo;

/**
 *  13、车型验证验证
 */
-(BOOL)ConanRegularExpressionchecking_CarType;

/**
 *  14、MAC地址验证
 */
-(BOOL)ConanRegularExpressionchecking_MacAddress;

/**
 *  15、手机号有效性
 */
-(BOOL)ConanRegularExpressionchecking_PhoneNumber;

/**
 *  16、是否属于中国移动
 */
-(BOOL)ConanRegularExpressionchecking_ChinaMobile;

/**
 *  17、是否属于中国联通
 */
-(BOOL)ConanRegularExpressionchecking_ChinaUnicom;

/**
 *  18、是否属于中国电信
 */
-(BOOL)ConanRegularExpressionchecking_ChinaTelecom;

/**
 *  19、是否是小灵通
 */
-(BOOL)ConanRegularExpressionchecking_SpecialPlane;

/**
 *  20、获取运营商
 */
-(NSString *)ConanRegularExpressionchecking_PhoneNumType;

/**
 *  21、网址
 */
-(BOOL)ConanRegularExpressionchecking_URL;

/**
 *  22、邮政编码
 */
-(BOOL)ConanRegularExpressionchecking_Postalcode;

@end
