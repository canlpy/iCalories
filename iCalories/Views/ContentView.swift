//
//  ContentView.swift
//  iCalories
//
//  Created by Can on 25.07.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food:
    FetchedResults<Food>
    
    @State private var showingAddView = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("\(Int(totalCaloriesToday())) Kcal (Today)")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                List {
                    ForEach(food) { food in
                        NavigationLink(destination: Text("\(food.calories)")) {
                            HStack {
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(food.name!)
                                        .bold()
                                    
                                    Text
                                    
                                    
                                }
                            }
                        }


                          
                        
                    }
                }
                
            }
            .navigationTitle("iCalories")
        }
    }
    private func totalCaloriesToday() -> Double {
        return 0.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
