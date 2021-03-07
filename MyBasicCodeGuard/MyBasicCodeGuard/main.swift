//
//  main.swift
//  MyBasicCodeGuard
//
//  Created by Al on 22/11/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Cocoa

//Updated for Xcode 12.0, from Paul Hudson
//
//Swift gives us an alternative to if let called guard let, which also unwraps optionals if they contain a value, but works slightly differently: guard let is designed to exit the current function, loop, or condition if the check fails, so any values you unwrap using it will stay around after the check.
//
//To demonstrate the difference, here’s a function that returns the meaning of life as an optional integer:

func getMeaningOfLife() -> Int? {
   return 42
    }
//And here’s that function being used inside another function, called printMeaningOfLife():

func printMeaningOfLife2() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}
//That uses if let, so that the result of getMeaningOfLife() will only be printed if it returned an integer rather than nil.
//
//If we had written that using guard let, it would look like this:

func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }
    print(name)
}
printMeaningOfLife()
print("alors")

//Yes, that’s a little longer, but two important things have changed:
//
//It lets us focus on the “happy path” – the behavior of our function when everything has gone to plan, which is to print the meaning of life.
//guard requires that we exit the current scope when it’s used, which in this case means we must return from the function if it fails. This is not optional: Swift won’t compile our code without the return.

//chris ching: guard is an early exit this means that when the condition is not met it will redirect the scope inside of the guard, thus, it does not continue to execute the code outside of the guard statement. This means that theoretically, it would be faster and wont consume as much resources in running the loop because it already exited/cancelled before anything else is executed.


//It’s common to see guard used one or more times at the start of methods, because it’s used to verify conditions are correct up front. This makes our code easier to read than if we tried to check a condition then run some code, then check another condition and run some different code.

//So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.

// attention ne fonctionne pas directement dans un ficheir main car contient un return !!!

