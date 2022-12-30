//
//  PlayButtonView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct PlayButtonView: View {
	@Binding var isPlay: Bool
	let size: CGFloat
	var action = {}
	
	var body: some View {
		Button {
			action()
		} label: {
			Image(
				systemName: isPlay
				? SFSymbols.pause.string
				: SFSymbols.play.string)
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: size, height: size)
		}
	}
}

struct PlayButtonView_Previews: PreviewProvider {
	static var previews: some View {
		PlayButtonView(isPlay: .constant(true), size: 40)
	}
}
