//
//  QuickAGIMacApp.swift
//  QuickAGIMac
//
//  Created by Moody on 2023-04-14.
//

import SwiftUI

@main
struct QuickAGIMacApp: App {
    
    @StateObject var viewModel = ViewModel(api: ChatGPTAPI(apiKey: "API-KEY"))
    
    var body: some Scene {
        MenuBarExtra("QuickAGI", image: "Icon") {
            VStack (spacing: 0) {
                HStack {
                    Text("QuickAGI")
                        .font(.title3)
                    Spacer()
                    Button {
                        guard !viewModel.isInteractingWithChatGPT else { return }
                        viewModel.clearMessages()
                    } label: {
                        Image(systemName: "trash")
                            .font(.callout)
                    }
                    .buttonStyle(.borderless)
                    .padding(.horizontal)
                    Button {
                        exit(0)
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.callout)
                    }
                    .buttonStyle(.borderless)
                }
                .padding()
                ContentView(vm: viewModel)
            }
            .frame(width: 780, height: 680)
        }
        .menuBarExtraStyle(.window)
    }
}
