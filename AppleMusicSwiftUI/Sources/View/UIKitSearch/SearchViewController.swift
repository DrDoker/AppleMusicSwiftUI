//
//  SearchViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 28/12/2022.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
	
	// MARK: - Outlets
	
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupNavigatonController()
		setupHierarchy()
		setupLayout()
	}
	
	// MARK: - Setup
	
	private func setupNavigatonController() {
		title = "UIKit"
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	private func setupHierarchy() {
	
	}
	
	private func setupLayout() {
		
	}
}
