import SwiftUI

struct FilterView: View {
    @ObservedObject var hairColor: Hair
    
    var body: some View {
        List(hairColor, children: \.hairColor) { row in
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
