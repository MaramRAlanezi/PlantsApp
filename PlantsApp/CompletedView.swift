//
//  Untitled.swift
//  PlantsApp
//
//  Created by Maram Rabeh  on 18/04/1446 AH.
//

import SwiftUI


extension Color{
   
}
struct CompletedView: View {
    @State private var showReminderSheet = false
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{VStack {
                Text("My Plants 🌱")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.trailing, 168.799)
                    
            }
                Image("Group 4")
                    .resizable()
                    .frame(width: 164, height: 200)
                    .foregroundColor(.green)
                    .padding()

                Text("All Done!🎉")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()

                Text("All Reminders Completed ")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding()
              
                Spacer()
                
                Button(action: {
                    showReminderSheet = true

                    print("New Reminder Button Pressed")
                }) {
                    Image(systemName: "plus.circle.fill")
                    Text("New Reminder")
                        .padding()
                        
                } .foregroundColor(.greeen)
                
                Spacer()
            }
        }
    }
}
#Preview {
    CompletedView()
}
