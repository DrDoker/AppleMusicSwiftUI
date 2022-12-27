//
//  GradientView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 27/12/2022.
//

import SwiftUI

struct GradientView: View {
	var colors: [Color]
	
    var body: some View {
		LinearGradient(colors: colors, startPoint: .bottomLeading, endPoint: .topTrailing)
			.overlay {
				Rectangle()
					.foregroundColor(.black)
					.opacity(0.4)
			}
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView(colors: [.red, .gray])
    }
}
