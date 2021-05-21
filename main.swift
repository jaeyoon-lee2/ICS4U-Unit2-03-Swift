/*
This program uses the MrCoxallStack class.
author  Jay Lee
version 1.2
since   2020-05-19
*/

let aStack = MrCoxallStack()
var toPop: String

while(true) {
  print("Enter the number to push on the stack: ", terminator:"")
  let inputString = String(readLine()!)
  if (inputString.uppercased() == "END") {
    break
  }
  aStack.Push(pushNumber: inputString)
  repeat {
    if (aStack.Peek() == nil) {
      print("\nThe Stack is empty.")
      break
    }
    print("\nDo you want to pop (the top element : \(aStack.Peek()!))? ", terminator:"")
    toPop = String(readLine()!).uppercased()
    if (toPop == "Y" || toPop == "YES") {
      print("\nThe top element : \(aStack.Pop()!) is popped.")
    }
  } while toPop == "Y" || toPop == "YES"
  print("")
}
print("\nThe Stack: ")
aStack.ShowStack()
print("\nDone.")
