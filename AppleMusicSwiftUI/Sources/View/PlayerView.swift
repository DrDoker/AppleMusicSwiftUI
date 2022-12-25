//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct PlayerView: View {
	var body: some View {
		HStack(alignment: .center) {
			Image(with: .cover)
				.resizable()
				.scaledToFit()
				.frame(
					width: 50,
					height: 50
				)
				.cornerRadius(6)
				.shadow(radius: 5)
			
			Text("Eminem - Lost Yourself")
				.padding(.leading)
			
			Spacer()
			
			HStack {
				Button(action: {}) {
					Image(with: .play)
						.padding(.trailing, 10)
				}
				Button(action: {}) {
					Image(with: .forward)
						.padding(.trailing, 10)
				}
			}
			.imageScale(.large)
			.foregroundColor(.black)
			
		}
		.padding(.horizontal)
		.frame(height: 65)
		.overlay(Divider(), alignment: .bottom)
		.background(.bar)
	}
}

struct PlayerView_Previews: PreviewProvider {
	static var previews: some View {
		PlayerView()
	}
}
