example(of: "using a stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let poppedElement = stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
}

example(of: "initializing a stack from an array") {
    let array = ["A", "B", "C", "D"]
    var stack = Stack(array)
    print(stack)
    stack.pop()
}

example(of: "initializing a stack from an array literal") {
    var stack: Stack = [1.0, 2.0, 3.0, 4.0]
    print(stack)
    stack.pop()
}



/// Stack Challenges
/// Reverse an Array
/// Create a functtion that prints the contents of an array in reversed order.

func printReversed<Element>(_ array: [Element]) {
    var stack = Stack<Element>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

printReversed(["123","123","233","53444","23333"])


/// Balance the parantheses
/// Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced. For example:
/// h((e))llo(world)() // balanced parentheses
/// (hello world // unbalanced parentheses

func checkParantheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for characer in string {
        if characer == "(" {
            stack.push(characer)
        } else if characer == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty
}

checkParantheses("h((e))llo(world)()")
checkParantheses("(hello world")
