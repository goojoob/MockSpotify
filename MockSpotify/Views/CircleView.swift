//
//  CircleView.swift
//  MockSpotify
//
//  Created by Antonio Rodriguez Cia on 28/2/22.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    var size: CGFloat

    var body: some View {
        Circle()
            .strokeBorder(Color("Background"), lineWidth: 1)
            .background(Circle().fill(color))
            .frame(width: size, height: size)

    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .blue, size: 10)
    }
}
