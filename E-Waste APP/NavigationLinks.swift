//
//  NavigationLinks.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 6/28/23.
//

import SwiftUI

struct NavigationLinks: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Welcome to E-Waste Recycling")
                    .font(.title)
                    .padding()
                List{
                    NavigationLink(destination: ElectronicDeviceListView(deviceType: .phone)) {
                        Text("Phones")
                            .font(.headline)
                            .padding()
                    }
                    
                    NavigationLink(destination: ElectronicDeviceListView(deviceType: .laptop)) {
                        Text("Laptops")
                            .font(.headline)
                            .padding()
                    }
                    
                    // Add more navigation links for other device types
                    
                }
            }
        }
    }
    
    struct NavigationLinks_Previews: PreviewProvider {
        static var previews: some View {
            NavigationLinks()
        }
    }
    
}
