//
//  ImageView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct ImageView: View {
    var text: String
    var time : Int
    var body: some View {
            ScrollView{
                ZStack{
                    Image("\(text)")
                        .resizable()
                        .frame(width: 400,height: 500)
                    VStack(alignment: .leading, spacing: 12){
                        Spacer()
                        HStack(spacing: 12){
                            Text("\(text)")
                                .font(.system(size: 35,weight: .semibold))
                            Spacer()
                        }
                        Text("Ready in \(time) mins")
                            .font(.system(size: 15))
                    }
                    .padding(10)
                }
            }
    }
}

#Preview {
    ImageView(text: "Default", time: 20)
}
