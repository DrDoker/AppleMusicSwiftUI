//
//  FullPlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct FullPlayerView: View {
	@State private var isPlay = false
	@State private var musicProgress = Float()
	@State private var volumeSettings = Float()
	
	var body: some View {
		ZStack {
			GradientView(colors: [.red, .gray])
				.ignoresSafeArea()
			
			VStack {
				Capsule()
					.frame(width: 40, height: 5)
					.foregroundColor(.white)
					.opacity(0.3)
					.padding(.bottom, 20)
				
				Spacer()
				
				CoverView(image: AssetsImages.cover.string, isPlay: $isPlay)
					.padding(.bottom, 20)
				
				SongInfoView()
				
				MusicControlView(
					isPlay: $isPlay,
					musicProgress: $musicProgress,
					volumeSettings: $volumeSettings)
				
				Spacer()
				
			}
			.padding(.horizontal, 30)
			.padding(.top, 60)
			.padding(.bottom, 40)
		}
	}
}

struct FullPlayerView_Previews: PreviewProvider {
	static var previews: some View {
		FullPlayerView()
	}
}
