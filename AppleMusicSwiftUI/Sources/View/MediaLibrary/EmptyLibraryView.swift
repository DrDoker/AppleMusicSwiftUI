//
//  EmptyLibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct EmptyLibraryView: View {
    var body: some View {
		VStack {
			Text("Search your music?")
				.font(.title2)
				.fontWeight(.bold)
				.padding(.bottom, 1.0)
				
			Text("All your music which you buy in iTunes Store stores here.")
				.foregroundColor(Color.gray)
				
		}
		.padding(.horizontal, 40)
		.multilineTextAlignment(.center)
		
    }
}

struct EmptyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyLibraryView()
    }
}
