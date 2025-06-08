//
//  SearchBarView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct SearchBarView: View {
  @Binding var searchtext: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Search", text:$searchtext)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.gray.opacity(0.2))
        )
    }
}

#Preview {
    SearchBarView(searchtext: .constant("Search"))
}
