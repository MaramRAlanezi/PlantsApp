import SwiftUI

struct SetReminderView: View {
    @State private var plantName: String = "Pothos"
    
    @State private var room = 0
    let rooms = ["Bedroom", "Living Room", "Kitchen", "Balcony", "Bathroom"]
    
    @State private var light = 0
    let lights = ["Full Sun", "Partial Sun", "Low Light"]
    
    @State private var wateringDays = 0
    let watering = ["Every day", "Every 2 days", "Every 3 days", "Once a week", "Every 10 days", "Every 2 weeks"]
    
    @State private var waterAmount = 0
    let water = ["20-50 ml", "50-100 ml", "100-200 ml", "200-300 ml"]
    
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Plant Info").foregroundColor(.white)) {
                    HStack {
                        Text("Plant Name")
                            .foregroundColor(.white)
                        TextField("Pothos", text: $plantName)
                            .foregroundColor(.white)
                    }
                }
                .listRowBackground(Color.gray)
                
                Section(header: Text("Room").foregroundColor(.white)) {
                    Picker("Room", selection: $room) {
                        ForEach(0..<rooms.count) { index in
                            Text(rooms[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                .listRowBackground(Color.gray)
                
                Section(header: Text("Light").foregroundColor(.white)) {
                    Picker("Light", selection: $light) {
                        ForEach(0..<lights.count) { index in
                            Text(lights[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .listRowBackground(Color.gray)
                
                Section(header: Text("Watering Days").foregroundColor(.white)) {
                    Picker("Watering Days", selection: $wateringDays) {
                        ForEach(0..<watering.count) { index in
                            Text(watering[index])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
                .listRowBackground(Color.gray)
                
                Section(header: Text("Water Amount").foregroundColor(.white)) {
                    Picker("Water Amount", selection: $waterAmount) {
                        ForEach(0..<water.count) { index in
                            Text(water[index])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
                .listRowBackground(Color.gray)
            }
            .scrollContentBackground(.hidden)
            .background(Color.black)
            .navigationBarTitle("Set Reminder", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel", action: {
                    // Dismiss logic here
                }),
                trailing: Button("Save", action: {
                    // Save logic here
                })
            )
            .accentColor(.green)
        }
    }
}

#Preview {
    SetReminderView()
}
