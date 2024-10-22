//
//  TodayReminderView.swift
//  PlantsApp
//
//  Created by Maram Rabeh  on 18/04/1446 AH.
//

import SwiftUI

struct Plant: Identifiable {
    let id = UUID()
    let name: String
    let room: String
    let sunlight: String
    let waterAmount: String
    var isCompleted: Bool
}

struct TodayReminderView: View {
    @State private var plants = [
        Plant(name: "Pothos", room: "Bedroom", sunlight: "Full Sun", waterAmount: "20-50 ml", isCompleted: false),
        Plant(name: "Monstera", room: "Kitchen", sunlight: "Full Sun", waterAmount: "20-50 ml", isCompleted: false)
    ]
    
    var body: some View{
        NavigationView {
            ZStack{
                VStack {
                    Text("My Plants 🌱")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.trailing, 168.799)
                        //.padding(top. isInfinite)
                    List {
                        Section(header: Text("Today").font(.headline).foregroundColor(.white)) {
                            ForEach($plants) { $plant in
                                HStack {
                                    Button(action: {
                                        plant.isCompleted.toggle()
                                    }) {
                                        Image(systemName: plant.isCompleted ? "checkmark.circle.fill" : "circle")
                                            .foregroundColor(plant.isCompleted ? .greeen : .gray)
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        HStack{
                                            Image(systemName: "location")
                                                .foregroundColor(.graaay);
                                            Text("in \(plant.room)")
                                                .font(.subheadline)
                                            .foregroundColor(.graaay)}
                                        .padding(.horizontal, 10)
                                        Text(plant.name)
                                            .font(.title3)
                                            .bold()
                 
                                        
                                        HStack {
                                            
                                            Label(plant.sunlight, systemImage: "sun.max")
                                                .foregroundColor(.yallowLight)
                                          
                                            
                                            
                                            Label(plant.waterAmount, systemImage: "drop")
                                                .foregroundColor(.skyBlue)
                                             
                                        }
                                        .font(.footnote)
                                        
                                    }
                                    Spacer()
                                }
                                .padding(.vertical, 5)
                            }
                        }.listRowBackground(Color.black)
                    }.scrollContentBackground(.hidden)
                    //.listStyle(InsetGroupedListStyle())
                  
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("New Reminder")
                                .foregroundColor(.greeen)
                                .padding()
                        }
                        .foregroundColor(.greeen)
                    }
                    .padding()
                }
              //  .navigationTitle("My Plants 🌱")
               // .foregroundColor(.white)
                
            } .background(Color.black)
            
        }
    }
}
#Preview {
    TodayReminderView()
}

