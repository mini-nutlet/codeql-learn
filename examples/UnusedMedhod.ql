/**
 * @id java/examples/unusedmethod
 * @name Unused private method
 * @description Finds private methods that are not accessed
 * @tags method
 *       access
 *       private
 */

import java

// method 方法
// isPrivate() 私有方法
// getAReference() 引用
// InitializerMethod 初始化方法

from Method m
where
    m.isPrivate() and
    not exists(m.getAReference()) and
    not m instanceof InitializerMethod
select m