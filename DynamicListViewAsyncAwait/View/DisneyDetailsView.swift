//
//  DetailsView.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import SwiftUI

struct DisneyDetailsView: View {
    var disneyCharacter: DisneyCharacter
    var body: some View {
        VStack {
            if let url = disneyCharacter.imageUrl, let imageUrl = URL(string: url){
                AsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                }placeholder: {
                    ProgressView()
                        .frame(width: 250, height: 250)
                }
            }
            else {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 250, height: 250)
            }
            Text(disneyCharacter.name)
                .font(.largeTitle)
        }
        .navigationTitle(disneyCharacter.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DisneyView()
    }
}

