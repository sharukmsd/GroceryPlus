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
            GroceryListView(viewModel: viewModel, namespace: namespace)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .backgroundView()
                .onViewDidLoad {
                    viewModel.onViewDidLoad(proxy)
                }
                .overlay {
                    if viewModel.showDetails {
                        GroceryDetailsView(viewModel: viewModel, namespace: namespace)
                    }
                }
        }
    }
}

#Preview {
    ContentView(viewModel: .default)
}
