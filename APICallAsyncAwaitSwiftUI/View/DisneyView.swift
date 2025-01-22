//
//  ContentView.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import SwiftUI

struct DisneyView: View {
    @StateObject private var disneyViewModel = DisneyViewModel()
    var body: some View {
        NavigationStack {
            ZStack{
                DisneyListView(disneyViewModel: disneyViewModel) // Pass viewModel to ListView
                DisneyErrorHandlerView(disneyViewModel: disneyViewModel) // Pass viewModel to ErrorHandler
            }
        }
    }
}

struct DisneyListView: View {
    @ObservedObject var disneyViewModel: DisneyViewModel // Use the shared instance
    var body: some View {
        List(disneyViewModel.disneyCharacter) { character in
            NavigationLink(destination: DisneyDetailsView(disneyCharacter: character)) {
                DishneyCharacterRow(disneyCharacter: character)
            } .listRowSeparator(.visible)
        }.task {
            await disneyViewModel.fetchCharacters()
        }
        .navigationTitle(Constants.General.appTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DishneyCharacterRow: View {
    let disneyCharacter: DisneyCharacter
    var body: some View {
                HStack {
                    if let url = disneyCharacter.imageUrl, let imageUrl = URL(string: url){
                        AsyncImage(url: imageUrl) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                        }placeholder: {
                            ProgressView()
                                .frame(width: 60, height: 60)
                        }
                    }
                    else {
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                    }
                    Text(disneyCharacter.name)
                        .font(.headline)
                }.padding(.vertical, 4)
        }
}

struct DisneyErrorHandlerView: View {
    @ObservedObject var disneyViewModel: DisneyViewModel // Use @ObservedObject
    var body: some View {
        ZStack{
            if disneyViewModel.isLoading {
                ProgressView()
                    .scaleEffect(2.0, anchor: .center)
                    .progressViewStyle(CircularProgressViewStyle(tint: .black))
            }
        }
        .alert(isPresented: $disneyViewModel.isShouldShowError) {
            Alert(
                title: Text(Constants.General.error),
                message: Text(disneyViewModel.errorMessage ?? Constants.General.generalErrorMessage),
                dismissButton: .default(Text(Constants.General.okButton))
            )
        }
    }
}

#Preview {
    DisneyView()
}
