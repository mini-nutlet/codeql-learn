/**
 * @id java/examples/qualifiedthis
 * @name Qualified 'this' access
 * @description Finds 'this' access that are qualified by a type name
 * @tags this
 *       access
 *       qualifier
 */

import java

// ThisAccess this 限定符
// getQualifier() 表达式

from ThisAccess t
where exists(t.getQualifier())
select t