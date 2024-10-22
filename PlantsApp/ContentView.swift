//
//  ContentView.swift
//  PlantsApp
//
//  Created by Maram Rabeh  on 17/04/1446 AH.
//

import SwiftUI


extension Color{
    static let greeen = Color (red:40/255, green:224/255, blue:168/255)}
extension Color{
    static let graaay = Color (red:44/255, green:44/255, blue:46/255)}
extension Color{
    static let whittte = Color (red:142/255, green:142/255, blue:147/255)}
extension Color{
    static let skyBlue = Color (red:202/255, green:243/255, blue:251/255)}
extension Color{
    static let yallowLight = Color (red:204/255, green:199/255, blue:133/255)}
struct ContentView: View {
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
                Divider()
                    .overlay(.gray)
            }
                Image("Plant")
                    .resizable()
                    .frame(width: 164, height: 200)
                    .foregroundColor(.green)
                    .padding()

                Text("Start your plant journey!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()

                Text("Now all your plants will be in one place and we will help you take care of them :)🪴 ")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding()
              
                Button(action: {
                    showReminderSheet = true

                    print("Set Reminder Button Pressed")
                }) {
                    Text("Set Plant Reminder")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.greeen)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
              //  .sheet(isPresented: $showReminderSheet) {
             //       SetReminderView()
             //   }
            
                Spacer()
            }
        }
    }
}
#Preview {
    ContentView()
}
