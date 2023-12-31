/**
 * @id java/examples/singletonblock
 * @name Singleton blocks
 * @description Finds block statements containing a single statement
 * @tags block
 *       statement
 */

import java

// BlockStmt 块表达式
// getNumStmt() 表达式数量

from BlockStmt b
where b.getNumStmt() = 1
select b