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
}
