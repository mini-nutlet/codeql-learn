/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds calls to com.example.Class.methodName
 * @tags call
 *       method
 */

import java

// 知识点说明
// MethodAccess 可访问方法
// Method 方法
// hasName(name) 表示方法名
// getMethod() 表示方法

from MethodAccess call, Method method
where
    call.getMethod() = method and
    method.hasName("setFileName") and
    method.getDeclaringType().hasQualifiedName("org.nutlet.fileupload.vos", "FileInfoVO")
select
    call