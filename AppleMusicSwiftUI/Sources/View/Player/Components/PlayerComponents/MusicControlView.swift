//
//  MusicControlView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct MusicControlView: View {
	@Binding var isPlay: Bool
	@Binding var musicProgress: Float
	@Binding var volumeSettings: Float
	
	var body: some View {
		VStack {
			VStack {
				Slider(value: $volumeSettings)
				HStack {
					Text("0:00")
					Spacer()
					Text("4:54")
				}
				.foregroundColor(.white)
			}
			.padding(.bottom, 30)
			
			
			HStack(spacing: 70) {
				CustomButtonView(image: "backward.fill", size: 40)
				PlayButtonView(isPlay: $isPlay, size: 40) {
					isPlay.toggle()
				}
				CustomButtonView(image: "forward.fill", size: 40)
			}
			.shadow(radius: 8)
			.foregroundColor(.white)
			.padding(.bottom, 40)
			
			HStack(spacing: 20) {
				Image(systemName: "speaker.fill")
					.frame(width: 20, height: 20)
					.foregroundColor(.white)
					.opacity(0.5)
				
				Slider(value: $musicProgress)
				
				Image(systemName: "speaker.wave.3.fill")
					.frame(width: 20, height: 20)
					.foregroundColor(.white)
					.opacity(0.5)
			}
			.padding(.bottom, 20)
			
			HStack(spacing: 60) {
				CustomButtonView(image: "quote.bubble", size: 20) {
					print("Text")
				}
				CustomButtonView(image: "airplayaudio", size: 20) {
					print("Air")
				}
				CustomButtonView(image: "list.bullet", size: 20) {
					print("List")
				}
			}
			.foregroundColor(.white)
			.opacity(0.8)
			.shadow(radius: 8)
		}
		.tint(.white)
	}
}

struct MusicControlView_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
			Color.red
			MusicControlView(isPlay: .constant(true), musicProgress: .constant(3.4), volumeSettings: .constant(3.4))
		}
	}
}
