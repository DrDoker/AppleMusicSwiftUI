//
//  CustomButtonView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct CustomButtonView: View {
	let image: String
	let size: CGFloat
	var action = {}
	
	var body: some View {
		Button {
			action()
		} label: {
			Image(systemName: image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: size, height: size)
				.imageScale(.large)
		}
	}
}

struct CustomButtonView_Previews: PreviewProvider {
	static var previews: some View {
		CustomButtonView(image: "play.fill", size: 40)
	}
}
