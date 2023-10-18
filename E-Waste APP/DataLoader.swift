//
//  DataLoader.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 9/2/23.
//

import Foundation

public class DataLoader: ObservableObject {
    @Published var userData = [UserData]()
    
    init() {
        load()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                
                let dataFromJson = try jsonDecoder.decode(TheApiResponse.self, from: data)  // <--- here
                self.userData = dataFromJson.data  // <--- here
                
            } catch {
                print(error)
            }
        }
    }
}
