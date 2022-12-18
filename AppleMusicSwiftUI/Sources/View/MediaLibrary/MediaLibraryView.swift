//
//  MediaLibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct MediaLibraryView: View {
	@State var mode: EditMode = .inactive
	
	var body : some View {
		NavigationStack {
			LibraryView
				.navigationTitle("Library")
				.toolbar {
						EditButton()
				}.environment(\.editMode, $mode)
		}
	}
	
	@ViewBuilder var LibraryView: some View {
		if mode == .active {
			EditListView()
		} else {
			EmptyLibraryView()
		}
	}
}

struct MediaLibraryView_Previews: PreviewProvider {
	static var previews: some View {
		MediaLibraryView()
	}
}
