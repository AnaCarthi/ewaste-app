//
//  DetailView.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 6/28/23.
//

import SwiftUI

struct DetailView: View {
    var deviceType: ElectronicDeviceType
    var deviceName: String
    
    var body: some View {
        VStack {
            Text("Device Type: \(deviceType == .phone ? "Phone" : "Laptop")")
                .font(.title)
                .padding()
            
            Text("Device Name: \(deviceName)")
                .font(.headline)
                .padding()
        }
    }
}

