//
//  ContentView.swift
//  GroceryPlus
//
//  Created by Muhammad on 01/03/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    @Namespace private var namespace

    init(viewModel: ContentViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        
        Utils.registerFonts()
        Utils.listInstalledFonts()
    }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                GroceryListView(viewModel: viewModel, namespace: namespace)
                
                if viewModel.showDetails {
                    GroceryDetailsView(viewModel: viewModel, namespace: namespace)
                        .zIndex(1)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .backgroundView()
            .onViewDidLoad {
                viewModel.onViewDidLoad(proxy)
            }
        }
    }
}

#Preview {
    ContentView(viewModel: .default)
}
