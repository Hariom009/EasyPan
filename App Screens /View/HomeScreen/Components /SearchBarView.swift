//
//  SearchBarView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct SearchBarView: View {
  @State var seachtext: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Search recipes,ingredients...", text:$seachtext)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.gray.opacity(0.2))
        )
    }
}

#Preview {
    SearchBarView(seachtext:"Seach recipes, ingredients...")
}
