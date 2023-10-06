/**
 * @id java/examples/arrayaccess
 * @name Array access
 * @description Finds array access expression with an index expression
 *              consisting of a unary assignment
 * @tags arrays
 *       access
 *       index
 *       unary
 *       assignment
 */

import java

// ArrasyAcess 表示可被访问的数组
// getIndexExpr() 表示获取获取下标的表达式
// UnrayAssignExpr 表示一元数组表达式

from ArrayAccess a
where
    a.getIndexExpr() instanceof UnaryAssignExpr
select a    