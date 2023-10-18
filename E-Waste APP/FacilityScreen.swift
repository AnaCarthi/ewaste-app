
import SwiftUI
struct FacilityScreen: View {
     @State private var selectedItems: [String] = []
     @State private var selectedCity: String = ""
     let cities = ["Fremont", "Milpitas", "San Francisco"]
     
     var body: some View {
         ZStack {
             Color(red: 0.5, green: 0.7, blue: 0.6)
                 .ignoresSafeArea()
             
             VStack {
                 Text("Facility Screen")
                     .font(.title)
                     .fontWeight(.bold)
                     .padding()
                 
                 VStack(alignment: .leading) {
                     Text("Select Items to Recycle:")
                         .font(.headline.italic().monospaced())
                     
                     VStack(alignment: .leading) {
                         ForEach(recyclingItems, id: \.self) { item in
                             CheckboxRow(title: item, isSelected: selectedItems.contains(item)) { isChecked in
                                 if isChecked {
                                     selectedItems.append(item)
                                 } else {
                                     selectedItems.removeAll { $0 == item }
                                 }
                             }
                         }
                     }
                     .padding(.leading)
                 }
                 
                 Spacer()
                 
                 VStack(alignment: .leading) {
                     Text("Select City:")
                         .font(.headline.italic().monospaced())
                     
                     Picker("City", selection: $selectedCity) {
                         ForEach(cities, id: \.self) { city in
                             Text(city).italic().tag(city)
                         }
                     }
                     .pickerStyle(MenuPickerStyle())
                     .padding()
                 }
                 
                 Spacer()
                 
                 Button(action: {
                     // Perform action with selected items and city
                     print("Selected Items: \(selectedItems)")
                     print("Selected City: \(selectedCity)")
                 }) {
                     Text("Find Facilities")
                         .font(.headline)
                         .foregroundColor(.white)
                         .padding()
                         .background(Color.teal)
                         .cornerRadius(10)
                 }
             }
         }
     }
     
     let recyclingItems = ["TVS", "Printers", "Computers"] // Add your desired recycling items here
 }

struct CheckboxRow: View {
    var title: String
    var isSelected: Bool
    var action: (Bool) -> Void
    
    var body: some View {
        Button(action: {
            action(!isSelected)
        }) {
            HStack {
                Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text(title)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
        
}

    
    struct FacilityScreen_Previews: PreviewProvider {
        static var previews: some View {
            FacilityScreen()
        }
    }
