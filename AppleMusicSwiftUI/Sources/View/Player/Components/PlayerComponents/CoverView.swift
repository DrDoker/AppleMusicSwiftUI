//
//  CoverView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct CoverView: View {
	var image: String
	@Binding var isPlay: Bool
	
	var body: some View {
		Group {
			Image(image)
				.resizable()
				.scaledToFit()
				.cornerRadius(15)
				.frame(width: isPlay ? 330 : 270, height: isPlay ? 330 : 270)
				.animation(.default, value: isPlay)
				.shadow(radius: 10)
		}
		.frame(height: 330)
	}
}

struct CoverView_Previews: PreviewProvider {
	static var previews: some View {
		CoverView(image: AssetsImages.cover.string, isPlay: .constant(true))
	}
}
