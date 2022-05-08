//
//  ContentView.swift
//  Lab15
//
//  Created by Akshita Lathar on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    
    @State var firstName = ""
    @State var placeholder = "Enter name"
    
    private func buttonPressed(){
        print(firstName)
    }
    
    var body: some View {
        VStack{
            Text("Your counter is now at:")
            Text(String(counter))
                .font(.largeTitle)
            
            HStack {
                Button(action: {
                    self.counter += 1
                }, label: {
                    Text("Add")
                })
                    .padding(20)
                
                Button(action: {
                    self.counter -= 1
                }, label: {
                    Text("Subtract")
                })
                    .padding(20)
            }
            
            Text(firstName)
            

            TextField("Enter name", text: $firstName)
                .padding(12)
            
            Button(action: buttonPressed) {
                Text("Press me!")
            }
        }
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
