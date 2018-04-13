/*
 
 1、private
 private访问级别所修饰的属性或者方法只能在当前类里访问。
 
 2、fileprivate
 fileprivate访问级别所修饰的属性或者方法在当前的Swift源文件里可以访问。
 
 3、internal（默认访问级别，internal修饰符可写可不写）
 internal访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问。
 如果是框架或者库代码，则在整个框架内部都可以访问，框架由外部代码所引用时，则不可以访问。
 如果是App代码，也是在整个App代码，也是在整个App内部可以访问。
 
 4、public
 可以被任何人访问。但其他module中不可以被override和继承，而在module内可以被override和继承。
 public 修饰的 class 在 Module 内部可以访问和继承，在外部只能访问
 public 修饰的 func 在 Module 内部可以被访问和重载（override）,在外部只能访问
 
 5，open
 可以被任何人使用，包括override和继承。
 open 修饰的 class 在 Module 内部和外部都可以被访问和继承
 open 修饰的 func 在 Module 内部和外部都可以被访问和重载（override）
 
 访问顺序：
 现在的访问权限则依次为：open，public，internal，fileprivate，private。
 
 final 修饰的 class 任何地方都不能不能被继承
 final 修饰的 func 任何地方都不能被 Override
 
 */

