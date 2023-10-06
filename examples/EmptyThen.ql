/**
 * @id java/examples/emptythen
 * @name If statement with empty then branch
 * @description Findes 'if' statement where the 'then' branch is
 *              an empty block statement
 * @tags if
 *       then
 *       conditional
 *       branch
 *       empty
 */

import java

// IfStmt 表示表达式
// getThen 表示获取 IF 表达式 else 分支
// .(BlockStmt) 表示类型转换
// getNumStmt() 表示获取块内表达式

from IfStmt i
where i.getThen().(BlockStmt).getNumStmt() = 0
select i
