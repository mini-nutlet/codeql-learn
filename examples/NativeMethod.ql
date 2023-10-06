/**
 * @id java/examples/native-method
 * @name Native method
 * @description Finds methods that are native
 * @tags method
 *       native
 *       modifier
 */

import java

// 知识点说明
// Method 表示方法
// isNative 表示native方法

from Method m
where m.isNative()
select m