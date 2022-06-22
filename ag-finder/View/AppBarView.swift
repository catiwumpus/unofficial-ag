//
//  AppBarView.swift
//  ag-finder
//
//  Created by Karl Smith on 6/20/22.
//

import SwiftUI

struct AppBarView: View {
    //MARK: - PROPERTIES
    @State var showSearchBar = false
    
    @Binding var inputText: String
    @Binding var selectedHairColor: HairColor
    @Binding var selectedEyeColor: EyeColor
    @Binding var selectedMold: Mold
    @Binding var selectedBrows: Brows
    @Binding var selectedSkin: Skin
    @Binding var selectedFreckles: Freckles
    @Binding var selectedBangs: Bangs
    
    var SearchBarView: some View {
        VStack {
            TextField("Search", text: $inputText)
                .padding(5)
                .font(.system(size: 15))
                .textFieldStyle(.roundedBorder)
                .shadow(radius: 3)
        }
    }
    //MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "line.horizontal.3")
                Spacer()
                
                if showSearchBar {
                    SearchBarView
                        .transition(.move(edge: .trailing))
                } else {
                    Text("American Girl")
                        .bold()
                }
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showSearchBar.toggle()
                            inputText = ""
                        }
                    }
            }
            .font(.system(size: 25))
            .frame(height: 30)
            
            //Sort Options
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    Menu {
                        Picker(selection: $selectedHairColor, label: Text("Hair Color")) {
                            ForEach(HairColor.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Hair")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedEyeColor, label: Text("Hair Color")) {
                            ForEach(EyeColor.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Eyes")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedMold, label: Text("Mold")) {
                            ForEach(Mold.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Face")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedBrows, label: Text("Brows")) {
                            ForEach(Brows.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Brows")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedSkin, label: Text("Skin")) {
                            ForEach(Skin.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Skin")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedFreckles, label: Text("Freckles")) {
                            ForEach(Freckles.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Freckles")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                    
                    Menu {
                        Picker(selection: $selectedBangs, label: Text("Bangs")) {
                            ForEach(Bangs.allCases, id: \.self) { value in
                                Text(value.rawValue)
                                    .tag(value)
                            }
                        }
                        .colorMultiply(.black)
                        .padding(.vertical, -3)
                        .overlay(Capsule().stroke(Color.gray))
                    } label: {
                        Text("Bangs")
                    }
                    .padding(3)
                    .foregroundColor(.black)
                    .overlay(Capsule().stroke(.black))
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width-30, height: 70)
    }
}

////MARK: - PREVIEW
//struct AppBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppBarView(selectedHairColor: .constant(HairColor(rawValue: "Brown")!))
//    }
//}
