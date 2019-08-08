/**
 * dart
 *
 */
// 执行入口
main() {
    sayHello();
}

// 顶层函数
sayHello() {
    new Developer().say();
}

// 类
class Developer {
    // 实例方法
    say() {
        // print是全局打印函数，类似于JavaScript的console.log和Java的System.out.print
        print("Hello World!");
    }
}

