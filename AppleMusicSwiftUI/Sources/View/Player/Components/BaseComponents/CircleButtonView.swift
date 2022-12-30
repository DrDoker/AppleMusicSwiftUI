//
//  CircleButtonView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct CircleButtonView: View {
	var image: String
	var imageSize: CGFloat
	var size: CGFloat
	var action = {}
	
    var body: some View {
		Button {
			action()
		} label: {
			ZStack {
				Circle()
					.frame(width: size)
					.foregroundColor(.white)
					.opacity(0.2)
					.shadow(radius: 10)
					
				Image(systemName: image)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: imageSize)
					.foregroundColor(Colors.musicControl)
			}
		}
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
		CircleButtonView(image: "ellipsis", imageSize: 25, size: 35)
    }
}
