//
//  ConanRegularExpression.h
//  ConanRegularExp
//
//  Created by Conan on 2017/3/3.
//  Copyright © 2017年 Conan. All rights reserved.
//

#ifndef ConanRegularExpression_h
#define ConanRegularExpression_h


/**
 *  1、邮箱正则
 */
static NSString *ConanEmail =@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";

/**
 *  2、Ip地址正则
 */
static NSString *ConanIpAddress =@"((?:(?:25[0-5]|2[0-4]\\d|[01]?\\d?\\d)\\.){3}(?:25[0-5]|2[0-4]\\d|[01]?\\d?\\d))";
/**
 *  3、电话号正则
 */
static NSString *ConanTellPhoneNum =@"^(\\d{3,4}-)\\d{7,8}$";

/**
 *  4、身份证号正则
 */
static NSString *ConanIdCard =@"";


/**
 *  5、数字和26个英文字母组成的字符串的正则
 */
static NSString *ConanStrFormNumberAndLetter =@"^[A-Za-z0-9]+$";

/**
 *  6、26位英文大小写字母组成的字符的校验
 */
static NSString *ConanStrFormLowerAndUpperLetter =@"^[A-Za-z]+$";

/**
 *  7、小写字母校验
 */
static NSString *ConanLowerLetter =@"^[a-z]+$";

/**
 *  8、大写字母校验
 */
static NSString *ConanUpperLetter =@"^[A-Z]+$";

/**
 *  9、特殊字符校验
 */
static NSString *ConanSpecialChar =@"[^%&',@`/!:;#<>^*~+=?(){}|$\x22]+";

/**
 *  10、只能输入数字校验
 */
static NSString *ConanNumber =@"^[0-9]*$";

/**
 *  11、验证码为6位数字校验
 */
static NSString *ConanCode =@"^\\d{6}$";

/**
 *  12、车牌号校验
 */
static NSString *ConanCarNo =@"^[\u4e00-\u9fa5]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fa5]$";

/**
 *  13、车型验证校验
 */
static NSString *ConanCarType =@"^[\u4E00-\u9FFF]+$";

/**
 *  14、MAC地址验证
 */
static NSString *ConanMacAddress =@"[0-9a-fA-F]{2}(:[0-9a-fA-F]{2}){5}";

/**
 *  手机号正则
 * 16、中国移动：China Mobile
 * 134,135,136,137,138,139,147,150,151,152,157,158,159,1705,178,182,183,184,187,188
 * 17、中国联通：China Unicom
 * 130,131,132,145,155,156,1709,176,185,186
 * 18、中国电信：China Telecom
 * 133,1349`,153,1700,177,180,181,189
 
 * 19、大陆地区固话及小灵通
 * 区号：010,020,021,022,023,024,025,027,028,029
 * 号码：七位或八位
 */

static NSString *ConanChinaMobile = @"(^1(3[4-9]|4[7]|5[0-27-9]|7[8]|8[2-478])\\d{8}$)|(^1705\\d{7}$)";


static NSString *ConanChinaUnicom = @"(^1(3[0-2]|4[5]|5[56]|7[6]|8[56])\\d{8}$)|(^1709\\d{7}$)";

static NSString *ConanChinaTelecom = @"(^1(33|349|53|77|8[019])\\d{8}$)|(^1700\\d{7}$)";

static NSString *ConanPHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";

/**
 *  21、网址验证
 */
static NSString *ConanURL = @"((http|ftp|https):\\/\\/)?[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])?";


/**
 *  22、邮政编码
 */
static NSString *ConanPostalcode = @"^[0-9]{6}$";


#endif /* ConanRegularExpression_h */
