//
//  PhoneViewUI.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 9/5/23.
//

import SwiftUI

struct PhoneViewUI: View {
    /*
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    */
    
    @StateObject var dataLoader = DataLoader() // <--- here
        
    var body: some View {
        
        VStack {
            List(dataLoader.userData) { user in
                Text(user.ParticipantName)
            }
            .onAppear {
                dataLoader.load()
            }
        }
    }
}

struct PhoneViewUI_Previews: PreviewProvider {
    static var previews: some View {
        PhoneViewUI()
    }
}
