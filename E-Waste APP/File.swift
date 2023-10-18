//
//  File.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 7/1/23.
//

//
//  Bacgkrounf Color.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 7/1/23.
//


import SwiftUI

struct File: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("Keep the Bay")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Personal E-Waste Recycler Locator")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "arrow.3.trianglepath")
                        .scaledToFit()
                }
                
                Text("Find the right facility for your needs in a few taps!")
            }
            .padding()
            .background(Rectangle().foregroundColor(.green))
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct File_Previews: PreviewProvider {
    static var previews: some View {
       File()
    }
}

