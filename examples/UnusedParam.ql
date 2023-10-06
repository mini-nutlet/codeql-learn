/**
 * @id java/examples/unusedparam
 * @name Unused parameter
 * @description Finds parameters that are not accessed
 * @tags parameter
 *       access
 */

import java

// Parameter 参数
// getAnAccess 获取访问

from Parameter p
where not exists(p.getAnAccess())
select p