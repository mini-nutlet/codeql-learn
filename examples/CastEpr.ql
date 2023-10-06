/**
 * @id java/examples/casteexp
 * @name Cast expression
 * @description Finds casts from a floating point ype to an integer type
 * @tags cast
 *       integer 
 *       float 
 *       type
 */

import java

// CastExpr 表示类型表达式
// getExpr() Expr 表示获取表达式
// getType() 表示获取表达式类型
// FloatingPointType 表示浮点类型
// IntegralType 表示Integer类型

from CastExpr c
where
    c.getExpr().getType() instanceof FloatingPointType and
    c.getType() instanceof IntegralType
select c
