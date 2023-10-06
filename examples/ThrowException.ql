/**
 * @id java/examples/throw-exception
 * @name Throw excption of type
 * @description Finds places where we throw com.example.AnException or one of its subtypes
 * @tags throw
 *       exception
 */

import java

// ThrowStmt 异常抛出声明
// getThrowExceptionType() 获取抛出的异常类型
// getAnAncestor() 获取祖先
// hasQualifiedName(package, type)  全限定类名称

from ThrowStmt throw
where throw.getThrownExceptionType().getAnAncestor().hasQualifiedName("java.lang", "Exception")
select throw