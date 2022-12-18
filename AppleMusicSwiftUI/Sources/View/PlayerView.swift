//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct PlayerView: View {
	var body: some View {
		HStack {
			Rectangle()
		}
		.frame(height: 70)
		.background(Color.init(.systemGray6))
		.offset(y: -49)
	}
}

struct PlayerView_Previews: PreviewProvider {
	static var previews: some View {
		PlayerView()
	}
}
