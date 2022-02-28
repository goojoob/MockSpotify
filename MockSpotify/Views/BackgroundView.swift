//
//  BackgroundView.swift
//  MockSpotify
//
//  Created by Antonio Rodriguez Cia on 28/2/22.
//

import SwiftUI

struct BackgroundView: View {

    var body: some View {
        TimelineView(.animation) { timeLine in
            let now = timeLine.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 20) * 9)
            let time = cos(angle.radians)

            ZStack(alignment: .topLeading) {
                Color("Background")
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .blur(radius: 100)
                    .opacity(time + 0.2)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }

}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}

