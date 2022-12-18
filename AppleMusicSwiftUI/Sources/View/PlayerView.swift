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
			Image("cover")
				.resizable()
				.frame(
					width: 60,
					height: 60
				)
				.cornerRadius(8)
			Text("Eminem - Lost Yourself")
				.padding(.leading)
			Spacer()
			HStack {
				Button(action: {}) {
					Image(systemName: "play.fill")
						.padding(.trailing, 10)
				}
				Button(action: {}) {
					Image(systemName: "forward.fill")
						.padding(.trailing, 10)
				}
			}
			.imageScale(.large)
			.foregroundColor(.black)
			
		}
		.padding(.horizontal)
		.frame(height: 80)
		.background(Color.white)
		.overlay(Divider(), alignment: .top)
		.overlay(Divider(), alignment: .bottom)
	}
	
}

struct PlayerView_Previews: PreviewProvider {
	static var previews: some View {
		PlayerView()
	}
}
