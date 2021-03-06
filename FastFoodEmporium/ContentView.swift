//
//  ContentView.swift
//  FastFoodEmporium
//
//  Created by gabi brown on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    @State var burgerCalories = 0
    @State var drinkCalories = 0
    @State var sideCalories = 0
    @State var dessertCalories = 0
    
    // MARK: Computed properties
    var totalCalories: Int {
        return burgerCalories + drinkCalories + sideCalories + dessertCalories
    }
    
    
    var body: some View {
        
        
        
        ScrollView {
            Group {
                Text("Select one of the four options for each part of the meal.")
                    .italic()
                    .padding(.bottom, 2)

                Text("Burgers")
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 3)

                Picker(selection: $burgerCalories,
                       label: Text("Burgers"),
                       content: {

                    Text("Cheeseburger").tag(461)
                    Text("Fish burger").tag(431)
                    Text("Veggie burger").tag(420)
                    Text("No burger").tag(0)

                })
                .pickerStyle(SegmentedPickerStyle())
                 
                Text("\(burgerCalories)")
            }

            
            Group {
                Text("Drinks")
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 3)

                Picker(selection: $drinkCalories,
                       label: Text("Drinks"),
                       content: {

                    Text("Soft drink").tag(130)
                    Text("Orange juice").tag(160)
                    Text("Milk").tag(118)
                    Text("No drink").tag(0)

                })
                    .pickerStyle(SegmentedPickerStyle())
                
                Text("\(drinkCalories)")

            }
            
            Group {
                
                Text("Sides")
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 3)

                Picker(selection: $sideCalories,
                       label: Text("Side order"),
                       content: {

                    Text("Fries").tag(100)
                    Text("Baked potato").tag(57)
                    Text("Chef salad").tag(70)
                    Text("No side").tag(0)

                })
                    .pickerStyle(SegmentedPickerStyle())
                Text("\(sideCalories)")

            }
            
            
            Group {
                Text("Desserts")
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 3)

                Picker(selection: $dessertCalories,
                       label: Text("Dessert"),
                       content: {

                    Text("Apple pie").tag(167)
                    Text("Sundae").tag(266)
                    Text("Fruit cup").tag(75)
                    Text("No dessert").tag(0)




                })
                    .pickerStyle(SegmentedPickerStyle())
                Text("\(dessertCalories)")
            }
            
            HStack {
                Text("Total calories")
                    .bold()

                Spacer()
            }

            // Output: Total calories
//            Text("\(String(format: "%.1f", totalCalories))")
//                .bold()
//                .padding()
            Text("\(totalCalories)")
                .bold()
                .padding()


            Spacer()
        }
        .navigationTitle("Menu Selections")


    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
