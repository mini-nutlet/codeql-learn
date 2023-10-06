/**
 * @id java/examples/volatilefield
 * @name Fields declared volatile
 * @description Finds fields with a 'volatile' modifier
 * @tags field
 *       volatile
 *       synchronization
 */

import java

// Field 字段
// isVolatile 是可见的

from Field f
where f.isVolatile()
select f