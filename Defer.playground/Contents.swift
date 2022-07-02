import UIKit

/*
 /// Defer - Swift's defer keyword lets us set up some work to be performed when the current scope exits. For example, you might want to make sure that some temporary resources are cleaned up once a method exits, and defer will make sure that happens no matter how that exit happens.
 */

// MARK: - Single Defer
func myFunc(){
    print("Step 1")
    defer {
        print("Step 2")
    }
    print("Step 3")
}

myFunc()
print("-------------------------")

// MARK: - For Loop
for i in 1...10 {
    print ("In \(i)")
    defer { print ("Deferred \(i)") }
    print ("Out \(i)")
}

print("-------------------------")

// MARK: - Multiple Stack - LIFO

func deferMulti() {
    defer {print ("3")}
    defer {print ("2")}
    defer {print ("1")}
}
deferMulti()

print("-------------------------")
// MARK: - Do Block

func work(){
    print("Step 1")
    do {
        defer { print("Step 2") }
        print("Step 3")
        print("Step 4")
    }
    print("Step 5")
}

work()
print("-------------------------")
