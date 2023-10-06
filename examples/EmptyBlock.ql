/**
 * @id java/examples/emptyblock
 * @name Empty blocks
 * @description Finds empty block statement
 * @tags empty
 *       block
 *       statement
 */

 import java

 // BlockStmt 表示块表达式
 // getNumStmt() 表示块表达式内的表达式数量
 
 from BlockStmt blk
 where
    blk.getNumStmt() = 0
select
    blk