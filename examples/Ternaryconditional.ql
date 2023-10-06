/**
 * @id java/examples/teranryconditional
 * @name Conditional expressions
 * @descrption Finds conditional expressions of the form '...? : ... : ...'
 *              where the types of the resulting expressions differ
 * @tags conditional
 *       type
 */

import java

// ConditionalExpr 条件表达式
// getTrueExpr() 获取真表达式
// getFalseExpr() 获取假表达式
// getType() 获取类型
// NullType 空值、空类型

from ConditionalExpr e
where
    e.getTrueExpr().getType() != e.getFalseExpr().getType() and
    not e.getTrueExpr().getType() instanceof NullType and
    not e.getFalseExpr().getType() instanceof NullType
select
    e