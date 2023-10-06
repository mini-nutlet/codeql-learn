/**
 * @id java/examples/extend-class
 * @name Class etends/implements
 * @description Finds classes/interface that extend/implement com.example.Class
 * @tags class
 *       extends
 *       implements
 *       overrides
 *       subtype
 *       supertype
 */

import java

//知识点说明
// RefType 表示Java引用类型
// getAStrictAncestor() 表示获取严格类型祖先
// hasQualifiedName(package, name) 表示拥有包名、类名的类

from RefType type
where
    type.getAStrictAncestor().hasQualifiedName("java.lang", "Exception")
select type