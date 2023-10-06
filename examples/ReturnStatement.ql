/**
 * @id java/examples/returnstatement
 * @name Return statements
 * @description Finds return statements that return 'null'
 * @tags return
 *       statement
 *       null
 */


import java

// ReturnStmt return返回表达式
// getResult() 获取返回结果
// NullLiteral null 字面量

from ReturnStmt r
where r.getResult() instanceof NullLiteral
select r