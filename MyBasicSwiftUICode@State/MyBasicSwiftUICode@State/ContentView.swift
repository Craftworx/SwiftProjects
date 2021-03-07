//
//  ContentView.swift
//  MyBasicSwiftUICode@State
//
//  Created by Al on 07/12/2020.
//
import SwiftUI
struct ContentView: View {
@State private var showGreeting = false
@State private var showAnotherGreeting = false
@State private var counter = 0
   var body: some View {
      VStack {
        Toggle(isOn: $showGreeting) { Text("Show welcome message")
        }.padding()

        Button("Show / Dont'show") {
            if showAnotherGreeting { showAnotherGreeting = false}
            else if !showAnotherGreeting { showAnotherGreeting = true}
            counter += 1
        }
        
        if showGreeting && showAnotherGreeting {
            Text("Hello World!")
            Text("Another Hello World !")
            Text("\(counter)")
        }
    }.frame(width: 200, height: 300, alignment:.center)
      .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
