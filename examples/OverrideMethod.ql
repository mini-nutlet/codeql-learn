/**
 * @id java/examples/override method
 * @name Override of method
 * @description Finds methods that override com.examples.Class.baseMethod
 * @tags method
 *       override
 */

import java

// Method 方法
// hasName() 方法名
// getDeclaringType() 声明方法
// hasQualifiedName(package, type) 全限定名
// override 覆盖方法，override +  1 或 多次递归

from Method override, Method base
where 
    base.hasName("baseMethod") and
    base.getDeclaringType().hasQualifiedName("com.example", "Class") and
    override.overrides+(base)
select
    override