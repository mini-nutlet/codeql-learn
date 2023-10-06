/**
 * @id java/examples/voidreturntype
 * @name Methods without return type
 * @description Findes method whose return type is void
 * @tags method
 *       void
 *       modifier
 *       return
 *       type
 */

import java

// Method 方法
// getReturnType 获取返回类型
// VoidType void类型

from Method m
where m.getReturnType() instanceof VoidType
select m