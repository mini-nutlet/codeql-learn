/**
 * @id java/examples/field-read
 * @name Read of field
 * @description Finds reads of aField (defined on com.example.Class)
 * @tags field
 *       read
 */

import java

// Field 字段
// FieldRead 可读字段
// getDeclaringType 表示声明字段的类名
// hasQulifiedName(package, type) 表示全限定类名

from Field f, FieldRead read
where
    // f.hasName("aField") and
    f.getDeclaringType().hasQualifiedName("org.nutlet.fileupload.vos", "FileInfoVO") and
    f = read.getField()
select
    read, f


