//
//  IconView.swift
//  MockSpotify
//
//  Created by Antonio Rodriguez Cia on 28/2/22.
//

import SwiftUI

struct IconView: View {
    var name: String
    @State var alarm: Bool

    var body: some View {
        Button {

        } label: {
            Image(systemName: name)
                .font(.title2)
                .foregroundStyle(Color("Text"))
                .padding(.bottom, 20)
                .overlay(CircleView(color: .blue, size: 10, line: 1, alarm: $alarm)
                            .offset(x: -7, y: -15)
                )
                .padding(.horizontal, 8)
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(name: "bell", alarm: false)
    }
}
