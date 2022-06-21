//
//  GalleryView.swift
//  ag-finder
//
//  Created by Karl Smith on 6/4/22.
//

import SwiftUI

struct DollThumbnailView: View {
    //MARK: - PROPERTIES
    let doll: Doll
    
    //MARK: -BODY
    var body: some View {
        VStack {
            Image(doll.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: 5)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            Text(doll.name)
        }
    }
}

//MARK: - PREVIEW
struct DollThumbnailView_Previews: PreviewProvider {
    static let dolls: [Doll] =
    Bundle.main.decode("dolls.json")
    
    static var previews: some View {
        DollThumbnailView(doll: dolls[9])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
