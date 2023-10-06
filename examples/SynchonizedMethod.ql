/**
 * @id java/examples/synchronizedmethod
 * @name Synchronized methods
 * @description Finds methods that are synchronized
 * @tags method
 *       synchronized
 *       modifier
 */

import java

// Method 方法
// isSynchronized() 表示同步方法

from Method m
where m.isSynchronized()
select m