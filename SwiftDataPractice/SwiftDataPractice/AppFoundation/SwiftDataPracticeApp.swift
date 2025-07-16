//
//  SwiftDataPracticeApp.swift
//  SwiftDataPractice
//
//  Created by Арсентий Халимовский on 24.06.2025.
//

import SwiftUI

@main
struct SwiftDataPracticeApp: App {
	
	let compositionRoot: CompositionRoot
	
	init() {
		
		do {
			compositionRoot = try CompositionRoot()
			print("composition root has been set")
		} catch {
			print("Fatal Error at App Entry Point")
			fatalError()
		}
	}
	
    var body: some Scene {
		
		
        WindowGroup {
			compositionRoot.mainViewBuilder()
        }
    }
}
