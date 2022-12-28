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
				Text("Lost Yourself")
					.font(.system(size: 24, weight: .semibold))
					.foregroundColor(.white)
				
				Text("Eminem")
					.font(.system(size: 22, weight: .regular))
					.foregroundColor(.white)
					.opacity(0.85)
			}
			Spacer()
			
			Menu {
				Button(role: .destructive) {
					print("Trash")
				} label: {
					Text("Trash")
					Image(systemName: "trash")
				}
				Button {
					print("Like")
				} label: {
					Text("Like")
					Image(systemName: "heart")
				}
			} label: {
				CircleButtonView(image: "ellipsis", imageSize: 20, size: 30)
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
