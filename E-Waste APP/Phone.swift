//
//  Phone.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 6/28/23.
//
import SwiftUI

enum ElectronicDeviceType {
    case phone
    case laptop
    // Add more device types if needed
}

struct ElectronicDeviceListView: View {
    var deviceType: ElectronicDeviceType
    
    var body: some View {
        NavigationView {
            VStack {
                Text(deviceType == .phone ? "Phone List" : "Laptop List")
                    .font(.title)
                    .padding()
                
                NavigationLink(destination: DetailView(deviceType: deviceType, deviceName: "Device 1")) {
                    Text("Device 1")
                        .font(.headline)
                        .padding()
                }
                
                NavigationLink(destination: DetailView(deviceType: deviceType, deviceName: "Device 2")) {
                    Text("Device 2")
                        .font(.headline)
                        .padding()
                }
                
                // Add more navigation links for other devices
                
            }
        }
    }
}

