/**
 * @id java/examples/toomanyparams
 * @name Methods with many parameters
 * @description Finds methods with more than ten parameters
 * @tags methods
 *       parameter
 *       argument
 */

import java

// Method 方法
// getNumberOfParameters() 参数数量

from Method m
where m.getNumberOfParameters() > 10
select m