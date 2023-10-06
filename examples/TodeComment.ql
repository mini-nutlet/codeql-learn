/**
 * @id java/examples/todocomment
 * @name TODO comments
 * @description Finds comments containing the word "TODO"
 * @tags comment
 *       TODO
 */

import java

// JavadocText Java文档对象
// getText() 获取文档
// regexMatch(regex) 正则匹配

from JavadocText c
where c.getText().regexpMatch("(?si).*\\bTODO\\b.*")
select c