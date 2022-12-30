//
//  SearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 28/12/2022.
//

import SwiftUI
import UIKit

struct UIKitSearchView: UIViewControllerRepresentable {
	func makeUIViewController(context: Context) -> some UIViewController {
		let navigationController = UINavigationController(rootViewController: SearchViewController())
		return navigationController
	}
	
	func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
