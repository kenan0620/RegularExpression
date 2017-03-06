//
//  ConanRegularExp.m
//  ConanRegularExp
//
//  Created by Conan on 2017/3/3.
//  Copyright © 2017年 Conan. All rights reserved.
//

#import "ConanRegularExp.h"

@implementation ConanRegularExp

#pragma mark - 1、精确验证身份证号
+ (BOOL) ConanRegularExpressionchecking_PrecisieIdentityCard:(NSString *)identityCard
{
    //1.对前17位数字本体码加权求和
    //公式为：S = Sum(Ai * Wi), i = 0, ... , 16。
    //其中Ai表示第i位置上的身份证号码数字值，Wi表示第i位置上的加权因子
    //其各位对应的值依次为： 7 9 10 5 8 4 2 1 6 3 7 9 10 5 8 4 2
    //2.以11对计算结果取模
    //Y = sum % 11
    //3.根据模的值得到对应的校验码
    //对应关系：//Y值: 0 1 2 3 4 5 6 7 8 9 10
    //校验码: 1 0 X 9 8 7 6 5 4 3 2
    //计算最后一位余数
    NSArray *arrExp = [NSArray arrayWithObjects:@"7", @"9", @"10", @"5", @"8", @"4", @"2", @"1", @"6", @"3", @"7", @"9", @"10", @"5", @"8", @"4", @"2", nil];
    NSArray *arrVaild = [NSArray arrayWithObjects:@"1", @"0", @"X", @"9", @"8", @"7", @"6", @"5", @"4", @"3", @"2", nil];
    
    long sum = 0;
    for (int i = 0; i < (identityCard.length -1); i++) {
        NSString * str = [identityCard substringWithRange:NSMakeRange(i, 1)];
        sum += [str intValue] * [arrExp[i] intValue];
    }
    
    int idx = (sum % 11);
    if ([arrVaild[idx] isEqualToString:[identityCard substringWithRange:NSMakeRange(identityCard.length - 1, 1)]]) {
        return YES;
    }else{
        return NO;
    }
    
}
#pragma mark - 2、密码校验(不含特殊符号)

+(BOOL)ConanRegularExpressionchecking_PasswordWithShortest:(NSInteger)shortest
                                                   longest:(NSInteger)longest
                                                  password:(NSString *)pwd
{
    NSString *regEx =[NSString stringWithFormat:@"^[a-zA-Z0-9]{%ld,%ld}+$", shortest, longest];
    return [self baseCheckForRegEx:regEx data:pwd];
}

#pragma mark - 3、校验只能输入n位的数字
+ (BOOL)ConanRegularExpressionchecking_NumberWithLength:(NSString *)length number:(NSString *)number
{
    NSString *regEx = [NSString stringWithFormat:@"^\\d{%@}$", length];
    return [self baseCheckForRegEx:regEx data:number];
}

#pragma mark - 4、校验最少输入n位的数字
+ (BOOL)ConanRegularExpressionchecking_NumberWithLeastLength:(NSString *)leastLength number:(NSString *)number
{
    NSString *regEx = [NSString stringWithFormat:@"^\\d{%@,}$", leastLength];
    return [self baseCheckForRegEx:regEx data:number];
}





#pragma mark -5、银行卡号验证
+ (BOOL)ConanRegularExpressionchecking_BankNumber:(NSString *)bankNumber
{
    int oddsum = 0;     //奇数求和
    int evensum = 0;    //偶数求和
    int allsum = 0;
    int cardNoLength = (int)[bankNumber length];
    int lastNum = [[bankNumber substringFromIndex:cardNoLength-1] intValue];
    
    bankNumber = [bankNumber substringToIndex:cardNoLength - 1];
    for (int i = cardNoLength -1 ; i>=1;i--) {
        NSString *tmpString = [bankNumber substringWithRange:NSMakeRange(i-1, 1)];
        int tmpVal = [tmpString intValue];
        if (cardNoLength % 2 ==1 ) {
            if((i % 2) == 0){
                tmpVal *= 2;
                if(tmpVal>=10)
                    tmpVal -= 9;
                evensum += tmpVal;
            }else{
                oddsum += tmpVal;
            }
        }else{
            if((i % 2) == 1){
                tmpVal *= 2;
                if(tmpVal>=10)
                    tmpVal -= 9;
                evensum += tmpVal;
            }else{
                oddsum += tmpVal;
            }
        }
    }
    
    allsum = oddsum + evensum;
    allsum += lastNum;
    if((allsum % 10) == 0)
        return YES;
    else
        return NO;
    
}

#pragma mark - 特殊字符
+ (BOOL)ConanRegularExpressionchecking_SpecialChar:(NSString *)data{
    NSString *regEx = @"[^%&',@`/!:;#<>^*~+=?(){}|$\x22]+";
    return [self baseCheckForRegEx:regEx data:data];
}

#pragma mark 进行校验
/**
 *  基本的验证方法
 *
 *  @param regEx 校验格式
 *  @param data  要校验的数据
 *
 *  @return YES:成功 NO:失败
 */
+(BOOL)baseCheckForRegEx:(NSString *)regEx data:(NSString *)data{
    
    NSPredicate *card = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx];
    
    if (([card evaluateWithObject:data])) {
        return YES;
    }
    return NO;
}


@end
