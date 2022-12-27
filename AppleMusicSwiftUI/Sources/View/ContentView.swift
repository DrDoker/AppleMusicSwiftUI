//
//  ContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack(alignment: .bottom) {
			MainTabView()
			MiniPlayerView()
		}
		.ignoresSafeArea(.keyboard, edges: .bottom)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
