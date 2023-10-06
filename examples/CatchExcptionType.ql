/**
 * @id java/examples/catch-exception
 * @name Catch exception
 * @description finds places where we catch exceptions of type xxxxException:
 * @tags catch
 *       try
 *       exception
 */

// 查找捕获异常

import java

// CatchClause 表示捕获块
// getACaughtType() 表示捕获的类型
// hasQualifiedName(package, type) package 表示包名，type 表示异常类型

from CatchClause catch
select catch, catch.getACaughtType() as type
