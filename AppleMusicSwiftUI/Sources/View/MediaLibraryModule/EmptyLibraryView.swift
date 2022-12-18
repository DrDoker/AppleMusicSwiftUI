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
			Text("Ищете свою музыку?")
				.font(.title2)
				.fontWeight(.bold)
				.padding(.bottom, 1.0)
				
			Text("Здесь появится купленая Вами в iTunes Store музыка.")
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
