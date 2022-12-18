//
//  EditListView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct EditListView: View {
	var body: some View {
		List {
			ForEach(0..<10) { _ in
				Text("Test")
			}
			.onMove { IndexSet, Int in
				
			}
		}
		.listStyle(.plain)
	}
}

struct EditListView_Previews: PreviewProvider {
	static var previews: some View {
		EditListView()
	}
}
