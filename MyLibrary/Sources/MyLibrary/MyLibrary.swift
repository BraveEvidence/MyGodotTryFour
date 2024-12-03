// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftGodot


#initSwiftExtension(
    cdecl: "swift_entry_point",
    types: [MyLibrary.self]
)

@Godot // If Godot needs to see the class, it needs this bit
class MyLibrary: RefCounted {
    @Callable // If Godot needs to execute a function, you need this bit
    func addition(a:Int, b:Int) -> Int {
        a+b
    }

    @Callable
    func hello(input:String) -> String {
        "Hello " + input
    }
}
