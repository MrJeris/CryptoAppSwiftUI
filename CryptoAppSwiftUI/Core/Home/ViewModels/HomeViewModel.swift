//
//  HomeViewModel.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 26.03.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins = [CoinModel]()
    @Published var portfolioCoins = [CoinModel]()
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
