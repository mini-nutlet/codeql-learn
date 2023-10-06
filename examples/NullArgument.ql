/**
 * @id java/examples/null-argument
 * @name Add null to collection
 * @description Finds places where we add null to a collection
 * @tags null
 *       parameter
 *       argument
 *       collection
 *       add
 */

import java

// MethodAccess 调用方法
// Method 方法
// getDeclaringType() 声明方法
// getSourceDeclaration() 获取声明类型
// hasQualifiedName(package, type) 声明限定类型
// getAnArgument() 空值字面量

from MethodAccess call, Method add
where
    call.getMethod().overrides*(add) and
    add.hasName("add") and
    add.getDeclaringType().getSourceDeclaration().hasQualifiedName("java.util", "Collection") and
    call.getAnArgument() instanceof NullLiteral
select
    call