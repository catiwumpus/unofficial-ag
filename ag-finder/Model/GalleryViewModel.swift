//
//  GalleryViewModel.swift
//  ag-finder
//
//  Created by Karl Smith on 6/21/22.
//

import Foundation

class GalleryViewModel: ObservableObject {
    @Published var dolls = [Doll]()
    
    init() {
        dolls = Bundle.main.decode("dolls.json")
    }
    
    private func loadJsonFile() -> [Doll]{
        var dbData = [Doll]()
        do {
            if let filePath  = Bundle.main.url(forResource: "dolls.json", withExtension: "json") {
                
                let jsonData = try Data(contentsOf: filePath)
                let decodedData = try JSONDecoder().decode([Doll].self, from: jsonData)
                print(decodedData)
                dbData = decodedData
            } else {
                return [Doll]()
            }
        } catch let error {
            print("[System] Error while fetching: \(error)")
        }
        return dbData
    }
}
