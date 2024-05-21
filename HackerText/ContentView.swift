//
//  ContentView.swift
//  HackerText
//
//  Created by Justin Hold on 5/20/24.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	@State private var trigger: Bool = false
	@State private var isClicked: Bool = false
	@State private var text: String = "Hello, World!"
	
	// MARK: - View Body
    var body: some View {
		VStack(alignment: .leading, spacing: 12) {
			HackerTextView(
				text: text,
				trigger: trigger,
				transition: .interpolate,
				speed: 0.06
			)
				.font(.largeTitle.bold())
				.lineLimit(4)
			
			Button(action: {
				if text == "Hello, World!" {
					text = "This is Hacker\nText View."
				} else if text == "This is Hacker\nText View." {
					text = "Made with <3\nin TX by @leftHandedApps"
				} else {
					text = "Hello, World!"
				}
				trigger.toggle()
			}, label: {
				Text("Trigger")
					.fontWeight(.semibold)
					.padding(.horizontal, 15)
					.padding(.vertical, 2)
			})
			.buttonStyle(.borderedProminent)
			.buttonBorderShape(.capsule)
			.frame(maxWidth: .infinity)
			.padding(.top, 30)
			.opacity(isClicked ? 0 : 1)
        }
		.padding(15)
		.frame(maxWidth: .infinity, alignment: .leading)
        
		
    }
}

#Preview {
    ContentView()
}
