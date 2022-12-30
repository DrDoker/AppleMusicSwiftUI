//
//  FullPlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct ClosePlayerView: View {
	@Binding var isPresented: Bool
	@State private var xOffset: CGSize = .zero
	
	var body: some View {
		
		if isPresented {
			ZStack {
				FullPlayerView()
					.cornerRadius(30)
					.ignoresSafeArea()
					.transition(.move(edge: .bottom))
					.offset(x: 0, y: xOffset.height)
					.animation(.easeInOut, value: xOffset)
					.gesture(
						DragGesture(minimumDistance: 10)
							.onChanged { value in
								if value.translation.height > 0 {
									xOffset.height = value.translation.height
								}
							}
							.onEnded { value in
								if xOffset.height > 350 {
									isPresented.toggle()
									xOffset.height = .zero
								} else {
									xOffset.height = .zero
								}
							}
					)
			}
		}
	}
}

struct ClosePlayerView_Previews: PreviewProvider {
	static var previews: some View {
		ClosePlayerView(isPresented: .constant(true))
	}
}


