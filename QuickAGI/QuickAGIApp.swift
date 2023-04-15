//
//  QuickAGIApp.swift
//  QuickAGI
//
//  Created by Moody on 2023-04-14.
//

import SwiftUI

@main
struct QuickAGIApp: App {
    
    // Insert API Key and Model (gpt-3.5-turbo, gpt-4) Here
    @StateObject var viewModel = ViewModel(api: ChatGPTAPI(apiKey: "API-KEY", model: "gpt-3.5-turbo"))
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView(vm: viewModel)
                    .toolbar {
                        ToolbarItem {
                            Button {
                                viewModel.clearMessages()
                            } label: {
                                Image(systemName: "trash")
                                    .font(.callout)
                                    .foregroundColor(.white)
                            }
                            .disabled(viewModel.isInteractingWithChatGPT)
                        }
                    }
                    .preferredColorScheme(.dark)
            }
        }
    }
}
