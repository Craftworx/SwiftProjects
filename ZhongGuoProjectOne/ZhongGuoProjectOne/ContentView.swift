//
//  ContentView.swift
//  ZhongGuoProjectOne
//
//  Created by Al on 09/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("你好 ")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .background(Color.white)
                .padding()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
