/**
 * @id java/examples/integer-litral
 * @name Integer literal
 * @description Finds places where we use the integer literal ·0·
 * @tags integer 
 *       literal
 */

import java

// IntegerListreal 表示整型字面量，即整型号常量
// getIntValue 表示字面量的值

from IntegerLiteral literal
where
    literal.getIntValue() = 0
select
    literal