//
//  HorizontalCategori.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import Foundation

struct HorizontalCategori {
	var title: String
	var list: [HorizontalCategoriList]
}

extension HorizontalCategori {
	static var listen = HorizontalCategori(
		title: "Listen in Spatial",
		list: [
			HorizontalCategoriList(
				title: "Apple Music Live: Mary J. Blige",
				subtitle: "Mary J. Blige",
				image: "live1"),
			HorizontalCategoriList(
				title: "Apple Music Live: Luke Combs - EP",
				subtitle: "Luke Combs",
				image: "live2"),
			HorizontalCategoriList(
				title: "Apple Music Live: Billie Eilish",
				subtitle: "Billie Eilish",
				image: "live3"),
			HorizontalCategoriList(
				title: "Apple Music Live: Lil Durk",
				subtitle: "Lil Durk",
				image: "live4"),
			HorizontalCategoriList(
				title: "Apple Music Live: Alicia Keys",
				subtitle: "Alicia Keys",
				image: "live5"),
			HorizontalCategoriList(
				title: "Apple Music Live: Wizkid",
				subtitle: "Wizkid",
				image: "live6")
		])
	
	static var watch = HorizontalCategori(
		title: "Watch Past Performances",
		list: [
			HorizontalCategoriList(
				title: "Alicia Keys: Apple Music Live",
				subtitle: "Featured Live Performance for You",
				image: "watch1"),
			HorizontalCategoriList(
				title: "Harry Styles: Apple Music Live",
				subtitle: "Featured Live Performance for You",
				image: "watch2"),
			HorizontalCategoriList(
				title: "Billie Eilish: Apple Music Live",
				subtitle: "Featured Live Performance for You",
				image: "watch3"),
			HorizontalCategoriList(
				title: "Lil Durk: Apple Music Live",
				subtitle: "Featured Live Performance for You",
				image: "watch4"),
			HorizontalCategoriList(
				title: "Wizkid: Apple Music Live",
				subtitle: "Featured Live Performance for You",
				image: "watch5")
		])
}

