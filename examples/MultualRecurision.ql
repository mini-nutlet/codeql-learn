/**
 * @id java/examples/mutualrecurision
 * @name Mutual recursion
 * @description Finds pairs of methods that call each other
 * @tags method
 *       recurision
 */

import java

// 知识点说明
// Method 表示方法
// exists 表示存在量词
// getCaller() 表示获取调用者
// getCallee() 表示调用

from Method m, Method n
where
    exists(MethodAccess ma | ma.getCaller() = m and ma.getCallee() = n ) and
    exists(MethodAccess ma | ma.getCaller() = n and ma.getCallee() = m )
select
    m, n