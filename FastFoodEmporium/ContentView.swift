//
//  ContentView.swift
//  FastFoodEmporium
//
//  Created by gabi brown on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Picker(selection: .constant(""),
                   label: Text("Burgers"),
                   content: {
                
                Text("Cheeseburger").tag(461)
                Text("Fish burger").tag(431)
                Text("Veggie burger").tag(420)
                Text("No burger").tag(0)
                
            })
            .pickerStyle(MenuPickerStyle())
            
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
