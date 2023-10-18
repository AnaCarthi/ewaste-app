import SwiftUI

struct ContentView: View {
    @State private var isShowingFacilityScreen = false
    
    var body: some View {
            NavigationView {
                VStack(alignment: .leading, spacing: 20.0){
                    Image("Keep the Bay").resizable().aspectRatio(contentMode: .fit).cornerRadius(15)
                    HStack{
                        Text("E-Waste Recycler Finder")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        
                        Image(systemName: "arrow.3.trianglepath").scaledToFit()
                    }
                    
                    Text("Find the right facility for your needs in a few taps!")
                    
                    NavigationLink("Find my facility!", destination: NavigationLinks2()) // Assuming NavigationLinks2 is your other view's struct name
                        .foregroundColor(.black)
                }
                .padding()
                .background(Rectangle().foregroundColor(.green))
                .padding()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

