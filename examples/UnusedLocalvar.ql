/**
 * @id java/examples/unusedlocalvar
 * @name Unused local variable
 * @description Finds local variables that are not accessed
 * @tags variable
 *       local
 *       access
 */

import java

// LocalVariableDecl 本地变量声明
// getAnAccess() 获取第一个调用

from LocalVariableDecl v
where not exists(v.getAnAccess())
select v