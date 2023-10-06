/**
 * @id constructor-call
 * @name Call to constructor
 * @description Finds places where we call `new com.example.Class(...)`
 * @tags call
 *       constructor
 *       new
 */

import java

// 知识点说明
// ClassInstanceExpr 表示类实例表达式 new xxx
// getConstructedType() 表示构造函数类型
// hasQualifiedName(package, type) 表示拥有 package 的 type 包名和类名

from ClassInstanceExpr new
where
    new.getConstructedType().hasQualifiedName("org.nutlet.fileupload.exceptions", "ApplicationException")
select
    new