//
//  ContentView.swift
//  Lab14
//
//  Created by Akshita Lathar on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView{
            List(sandwiches) { sandwich in
                
                NavigationLink(destination: Text(sandwich.name)) {
                    Image(sandwich.thumbnailName)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text(sandwich.name)
                        Text("\(sandwich.ingredientCount) ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}


