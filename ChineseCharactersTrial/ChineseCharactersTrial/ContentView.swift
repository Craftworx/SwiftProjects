//
//  ContentView.swift
//  ChineseCharactersTrial
//  Created by Al on 14/02/2021.
//PREMIERE ETAPE

import SwiftUI


struct ContentView: View {
    
    @State var displayedWord = "汉子"
    @State var displayedWordTranslation = "Traduction"
    @State var input1 = "汉子"
    @State var input2 = "Traduction"
    
    var body: some View {
        Spacer()
        HStack {
            Text("中文").font(.custom("Herculanum",size: 30)).padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
        }.background(Color.red)
        .cornerRadius(20)
        .foregroundColor(.white)
        HStack {
            VStack {
                Spacer()
                
                TextField(displayedWord, text: $input1)
                    .padding(.all, 5.0)
                    .frame(width: 45.0)
                Spacer()
                
                TextField(displayedWordTranslation, text: $input2)
                    .padding(.all, 5.0)
                    .frame(width: 135.0)
                Spacer()
                
                var chineseWord: String = displayedWord
                var chineseWordTranslation = displayedWordTranslation
                
                Button("Enregistrez") {
                    
                    let manager = FileManager.default
                    
                    let chineseDictionaryPath = "/Users/Al/Swift/Github/SwiftProjects/ChineseCharactersTrial/ChineseCharactersTrial/Assets.xcassets/chineseWord.txt"
                    let chineseDictionaryURL = URL(fileURLWithPath: chineseDictionaryPath)
                    manager.createFile(atPath: chineseDictionaryPath, contents: nil, attributes: nil)
                    
                    do {
                    try input1.write(to: chineseDictionaryURL, atomically: true, encoding: .utf8)
                    }
                    catch { print("foutu")}
                    do {
                    try chineseWordTranslation.write(to: chineseDictionaryURL, atomically: true, encoding: .utf8)
                    }
                    catch { print("foutu")}

                }
                .background(Color.red)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(5)
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 150.0)
                //Text("牛年").font(.system(size: 60))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        VStack {
            Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
