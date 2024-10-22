//
//  TodayReminderView2.swift
//  PlantsApp
//
//  Created by Maram Rabeh  on 18/04/1446 AH.
//

//
//  TodayReminderView.swift
//  PlantsApp
//
//  Created by Maram Rabeh  on 18/04/1446 AH.
//

import SwiftUI

struct TodayReminderView2: View {
    @State private var plants = [
        Plant(name: "Pothos", room: "Bedroom", sunlight: "Full Sun", waterAmount: "20-50 ml", isCompleted: false),
        Plant(name: "Monstera", room: "Kitchen", sunlight: "Full Sun", waterAmount: "20-50 ml", isCompleted: false)
    ]
    
    var body: some View{
        NavigationView {
            
            VStack {
                List {
                    Section(header: Text("Today").font(.headline).foregroundColor(.gray)) {
                        ForEach($plants) { $plant in
                            HStack {
                                Button(action: {
                                    plant.isCompleted.toggle()
                                }) {
                                    Image(systemName: plant.isCompleted ? "checkmark.circle.fill" : "circle")
                                        .foregroundColor(plant.isCompleted ? .greeen : .graaay)
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("in \(plant.room)")
                                             .font(.subheadline)
                                             .foregroundColor(.graaay)
                                    Text(plant.name)
                                    .font(.title3)
                                      .bold()
                                    
                                    
                           
                                    
                                    HStack {
                                     
                                        Label(plant.sunlight, systemImage: "sun.max")
                                            .foregroundColor(.yallowLight)
                                            .background(.gray)
                                         
                                
                                        Label(plant.waterAmount, systemImage: "drop")
                                            .foregroundColor(.skyBlue)
                                            .background(.gray)
                                    }
                                  .font(.footnote)
                                  
                                }
                                Spacer()
                            }
                            .padding(.vertical, 5)
                        }
                    }.background(.black)
                }
                .listStyle(InsetGroupedListStyle())
                .background(Color.black)
                
                Button(action: {
                 
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                            .padding()
                    }
                    .foregroundColor(.greeen)
                }
                .padding()
            }
            .navigationTitle("My Plants 🌱")
           .foregroundColor(.white)
      
        } .background(Color.black)
    }
}

#Preview {
    TodayReminderView2()
}

