//
//  NavigationLinks2.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 6/28/23.
//

//
//  NavigationLinks.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 6/28/23.
//

import SwiftUI

struct NavigationLinks2: View {
    var body: some View {
        NavigationStack {
            
            
            VStack {
                Text("Welcome to E-Waste Recycling")
                    .font(.title)
                    .padding()
                
                    List{
                        NavigationLink(destination: PhoneView()) {
                            HStack{
                                Image("phone2").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60) // Adjust the image size as needed
                                    .padding(.trailing, 8)
                                Text("Phones").foregroundColor(.gray)
                                    .font(.title)
                                    .font(.system(size: 24))
                                    .italic()
                                    .monospaced()
                                    .padding()
                                
                                    
                            }
                        }
                        
                        NavigationLink(destination: Text("Detail View 2")) {
                            HStack{
                                Image("pc2").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60) // Adjust the image size as needed
                                    .padding(.trailing, 8)
                                Text("PCs").font(.title).foregroundColor(.purple)
                                    .font(.title)
                                    .font(.system(size: 24))
                                    .italic()
                                    .monospaced()
                                    .padding()
                                    
                            }
                            }
                        NavigationLink(destination: Text("Detail View 1")) {
                            HStack{
                                Image("printer2").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60) // Adjust the image size as needed
                                    .padding(.trailing, 8)
                                Text("Printers").font(.title).foregroundColor(.blue)
                                    .font(.system(size: 24))
                                    .italic()
                                    .monospaced()
                                    .padding()
                            }
                        }
                        
                        NavigationLink(destination: Text("Keyboards")) {
                            HStack{
                                Image("keyboard2").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60) // Adjust the image size as needed
                                    .padding(.trailing, 8)
                                Text("Keyboards").font(.title).foregroundColor(.green)
                                    .font(.system(size: 24))
                                    .italic()
                                    .monospaced()
                                    .padding()                            }
                            }
                        NavigationLink(destination: Text("Keyboards")) {
                            HStack{
                                Image("tv2").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60) // Adjust the image size as needed
                                    .padding(.trailing, 8)
                                Text("TVs").font(.title).foregroundColor(.red)
                                    .font(.system(size: 24))
                                    .italic()
                                    .monospaced()
                                    .padding()
                            }
                            }
                        }
                        
                        // Add more NavigationLinks with images and titles as needed
                    }
                }
            }
            
        }
    

    
    
    struct NavigationLinks2_Previews: PreviewProvider {
        static var previews: some View {
            NavigationLinks2()
        }
    }
    


