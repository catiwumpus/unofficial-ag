//
//  GalleryView.swift
//  ag-finder
//
//  Created by Karl Smith on 6/4/22.
//

import SwiftUI

struct GalleryView: View {
    //MARK: -PROPERTIES
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    @ObservedObject var viewModel = GalleryViewModel()
    
    @State var inputText = ""
    @State var selectedHairColor = HairColor.all
    //MARK: -BODY
    var body: some View {
        AppBarView(inputText: $inputText, selectedHairColor: $selectedHairColor)
            .padding(.bottom, 5)
        Divider()
            .frame(width: UIScreen.main.bounds.width)
                
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(viewModel.dolls.filter({ doll in
                    filterSearchText(doll)
                }).filter({ doll in
                    filterHairColor(doll)
                }), id: \.self) { doll in
                    DollThumbnailView(doll: doll)
                }
            }
            .padding(.horizontal)
        }
    }
    
    // Filter helper functions
        private func filterSearchText(_ doll: Doll) -> Bool {
            if inputText == "" || doll.name.localizedCaseInsensitiveContains(inputText) {
                return true
            } else {
                return false
            }
        }
    
    private func filterHairColor(_ doll: Doll) -> Bool {
        if selectedHairColor == .all || selectedHairColor == doll.hair
            {
                return true
            } else {
                return false
            }
        }
}



struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
