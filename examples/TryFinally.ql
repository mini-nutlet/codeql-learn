/**
 * @id java/examples/tryfinally
 * @name Try-finally statement
 * @description Finds try-finally statements without a catch clause
 * @tags try
 *       finally
 *       catch
 *       exceptions
 */

import java

// TryStmt 表示 try 块表达式
// getFinally() 获取 finally
// getACatchClause() 获取捕获异常分支

from TryStmt try
where
    exists(try.getFinally()) and
    not exists(try.getACatchClause())
select
    try
