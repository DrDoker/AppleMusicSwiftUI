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
	static var watch = HorizontalCategori(
		title: "Watch Past Performances",
		list: [
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia")
		])
	
	static var listen = HorizontalCategori(
		title: "Listen in Spatial",
		list: [
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia"),
			HorizontalCategoriList(
				title: "Title",
				subtitle: "Subtitle",
				image: "alicia")
		])
}

