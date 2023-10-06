/**
 * @id java/examples/eq-true
 * @name Equailty test on boolean
 * @description Finds tests like `==true` `==false` `!=true` `!=false`
 * @tags equals
 *       test
 *       boolean
 */

import java

// EqualityTest 等式表达式测试
// getAnOperand() 获取操作符号，等式 == != 
// BooleanLiteral 字面量，即 true false

from EqualityTest eq
where eq.getAnOperand() instanceof BooleanLiteral
select eq