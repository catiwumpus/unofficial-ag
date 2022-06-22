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
    @State var selectedEyeColor = EyeColor.all
    @State var selectedMold = Mold.all
    @State var selectedBrows = Brows.all
    @State var selectedSkin = Skin.all
    @State var selectedFreckles = Freckles.all
    @State var selectedBangs = Bangs.all
    
    //MARK: -BODY
    var body: some View {
        AppBarView(inputText: $inputText, selectedHairColor: $selectedHairColor, selectedEyeColor: $selectedEyeColor, selectedMold: $selectedMold, selectedBrows: $selectedBrows, selectedSkin: $selectedSkin, selectedFreckles: $selectedFreckles, selectedBangs: $selectedBangs)
            .padding(.bottom, 5)
        Divider()
            .frame(width: UIScreen.main.bounds.width)
                
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(viewModel.dolls.filter({ doll in
                    filterSearchText(doll)
                }).filter({ doll in
                    filterHairColor(doll)
                }).filter({ doll in
                    filterEyeColor(doll)
                }).filter({ doll in
                    filterMold(doll)
                }).filter({ doll in
                    filterBrows(doll)
                }).filter({ doll in 
                    filterSkin(doll)
                }).filter({ doll in
                    filterFreckles(doll)
                }).filter({ doll in
                    filterBangs(doll)
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
    
    private func filterEyeColor(_ doll: Doll) -> Bool {
        if selectedEyeColor == .all || selectedEyeColor == doll.eyes
            {
                return true
            } else {
                return false
            }
        }
    
    private func filterMold(_ doll: Doll) -> Bool {
        if selectedMold == .all || selectedMold == doll.face
            {
                return true
            } else {
                return false
            }
        }
    
    private func filterBrows(_ doll: Doll) -> Bool {
        if selectedBrows == .all || selectedBrows == doll.brows
            {
                return true
            } else {
                return false
            }
        }
    
    private func filterSkin(_ doll: Doll) -> Bool {
        if selectedSkin == .all || selectedSkin == doll.skin
            {
                return true
            } else {
                return false
            }
        }
    
    private func filterFreckles(_ doll: Doll) -> Bool {
        if selectedFreckles == .all || selectedFreckles == doll.freckles
            {
                return true
            } else {
                return false
            }
        }
    
    private func filterBangs(_ doll: Doll) -> Bool {
        if selectedBangs == .all || selectedBangs == doll.bangs
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
