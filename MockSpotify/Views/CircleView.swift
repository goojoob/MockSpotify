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
    var line: CGFloat
    @Binding var alarm: Bool

    var body: some View {
        Circle()
            .strokeBorder(Color("Background"), lineWidth: line)
            .background(Circle().fill(color))
            .frame(width: size, height: size)
            .opacity(alarm ? 1 : 0)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .blue, size: 10, line: 1, alarm: .constant(false))
    }
}
