//
//  PhonesView.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 7/16/23.
//

import SwiftUI
import MapKit

func getCoordinates(city: String, completion: @escaping (CLLocationCoordinate2D?, Error?) -> Void) {
    CLGeocoder().geocodeAddressString(city) { placemarks, error in
        guard let placemarks = placemarks,
              let location = placemarks.first?.location?.coordinate else {
            completion(nil, error)
            return
        }
        completion(location, nil)
    }
}

struct PhoneView: View {
    
    
    //var data: [UserData]

    init() {
            //data = DataLoader().userData
            //print(data)  // Print the data inside the initializer
    }
    

    
    @State private var city: String = ""
    @State private var coordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    )

    /*
    @State private var sortedData: [UserData] = []
    
    var filteredData: [UserData] {
            return data.filter {
                $0.PhysicalCity.lowercased() == city.lowercased() &&
                ($0.Excluded.isEmpty || !$0.Excluded.contains("phones"))
            }.sorted(by: {
                $0.Fees < $1.Fees
            })
    }
     */
    
    
    @StateObject var dataLoader = DataLoader() // <--- here
    
    var filterdData: [UserData] {
        if city.isEmpty
        {
            return dataLoader.userData
        } else {
            return dataLoader.userData.filter {
                $0.PhysicalCity.localizedCaseInsensitiveContains(city)
            }.sorted(by: {$0.Fees < $1.Fees})
        }
    }
    
    var body: some View {
        VStack {
            
            
            TextField("Enter City", text: $city, onCommit: {
                getCoordinates(city: city) { location, error in
                    guard let location = location else {
                        print("Error getting location: \(error?.localizedDescription ?? "No error")")
                        return
                    }
                    coordinateRegion.center = location
                }
            })
            .padding()
            .border(Color.gray, width: 0.5)
            Map(coordinateRegion: $coordinateRegion)
                .frame(height:400)
                .edgesIgnoringSafeArea(.all)
            
            
            /*
            List(dataLoader.userData) { user in
                Text(user.ParticipantName)
            }
            .onAppear {
                dataLoader.load()
            }
             */
      
            
            List(filterdData, id: \.id) {
                userDataItem in
                Text("\(userDataItem.ParticipantName), City: \(userDataItem.PhysicalCity)")
            }
            
            
            Spacer()
        }
        .navigationTitle("Phones")
    }
}



struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
