/**
 * @id java/examples/switchcase
 * @name Switch statement case thing 
 * @description Finds switch statements with a missing enum constant case and no default case
 * @tags switch
 *       case
 *       enum
 */

import java

// SwitchStmt switch 表达式声明
// EnumType 枚举类型
// EnumConstant 枚举常量
// getExpr() 获取表达式
// getType() 获取类型
// getAConstCase() 获取分支
// getValue() 获取值
// getAnAccess() 获取访问
// getDefaultCase() 获取default分支

from SwitchStmt switch, EnumType enum, EnumConstant missing
where
    switch.getExpr().getType() = enum and
    missing.getDeclaringType() = enum and
    not switch.getAConstCase().getValue() = missing.getAnAccess() and
    not exists(switch.getDefaultCase())
select  switch