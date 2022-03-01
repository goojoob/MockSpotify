//
//  HeaderView.swift
//  MockSpotify
//
//  Created by Antonio Rodriguez Cia on 28/2/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Good Night")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color("Text"))
                    .padding([.bottom, .leading])
                Spacer()
                IconView(name: "bell", alarm: true)
                IconView(name: "clock", alarm: false)
                IconView(name: "gear", alarm: false)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(Color("Background").opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
