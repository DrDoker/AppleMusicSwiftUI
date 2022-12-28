//
//  SongInfoView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct SongInfoView: View {
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 2) {
				Text(Strings.Player.artist)
					.font(.system(size: 24, weight: .semibold))
					.foregroundColor(Colors.songInfo)
				
				Text(Strings.Player.song)
					.font(.system(size: 22, weight: .regular))
					.foregroundColor(Colors.songInfo)
					.opacity(0.85)
			}
			Spacer()
			
			Menu {
				Button(role: .destructive) {
					print("Trash")
				} label: {
					Text(Strings.MenuPlayer.trash)
					Image(with: .trash)
				}
				Button {
					print("Like")
				} label: {
					Text(Strings.MenuPlayer.like)
					Image(with: .heart)
				}
			} label: {
				CircleButtonView(
					image: SFSymbols.ellipsis.string,
					imageSize: 20,
					size: 30)
			}
		}
	}
}

struct SongInfoView_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
			Color.red
			SongInfoView()
		}
	}
}
