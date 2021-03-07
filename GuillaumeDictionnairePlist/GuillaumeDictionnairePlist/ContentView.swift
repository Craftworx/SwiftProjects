import SwiftUI

let dictionaryURL = Bundle.main.resourceURL!.appendingPathComponent("liste1.plist")

struct ContentView: View {
    @State private var symbolsText: String = ""
    @State private var traductionText: String = ""
    @State private var hanziText: String = ""
    
    /*retrieve the content of the dictionary from file
     if file doesn't exist, create an empty dictionary*/
    var dictionary = NSMutableDictionary(contentsOf: dictionaryURL) as? [String: Any] ?? [String: Any]()
    
    mutating func saveToFile() {
        if (symbolsText != "" && traductionText != "") {
            //generate random uid
            let uid = UUID().uuidString
            //let uid = "13"
            let entryValue: [String : Any] = [
                "traduction": traductionText,
                "symbols": symbolsText,
                "score": 0
            ]
            //add entry to dictionary
            dictionary[uid] = entryValue
            
            
            
            /*
             Swift Dictionary is [Any: Any] (mutable)
             NSDictionary is [String: Any] (non mutable)
             NSMutableDictionary is [String: Any] (mutable)
            */
            
            //write to file
            do {
                try (self.dictionary as NSDictionary).write(to: dictionaryURL)
                print("Save Succeded")
            } catch {
                print("failed to save file \(error)")
            }
        }
    }
    
    func printObject (_ forKey: String) {
        guard let object = dictionary[forKey]
        else { return }
        print(object)
    }
    
    
    func traductionFor(symbols: String) -> String? {
        for a in self.dictionary {
            if let element = a.value as? [String: Any] {
                if let s = element["symbols"] as? String {
                    if (s == symbols) {
                        return element["traduction"] as? String
                    }
                }
            }
        }
        
        return nil
    }
    
    func randomSymbol() -> [String: Any]? {
        if self.dictionary.count > 0 {
            return self.dictionary.randomElement()!.value as? [String: Any]
        }
        
        return nil
    }
    
 
    
    var body: some View {
        VStack {
            //Text("\(Bundle.main.resourceURL!)")
            
            TextField("汉子", text: $symbolsText)
                .padding(.all, 5.0)
                .frame(width: 45.0)
                .font(.system(size: 30))
            TextField("Traduction", text: $traductionText)
                .padding(.all, 5.0)
                .frame(width: 135.0)
                .font(.system(size: 30))
            Button("Enregistrer") {
                //self.saveToFile()
                self.printObject("13")
            }
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(5)
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 150.0)
            
            Button("Show random") {
                if let element = self.randomSymbol() {
                    let elementDict = element
                        if let hanzi = elementDict["symbols"] as? String {
                            print("\(hanzi)")
                            hanziText = hanzi
                        }
                }
                else {
                    print("foutu")
                }
            } .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(5)
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 150.0)
            Text("\(hanziText)") .padding(.all, 5.0)
                .frame(width: 100.0)
                .font(.system(size: 30))
        }.frame(width: 400, height: 700, alignment: .center)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
