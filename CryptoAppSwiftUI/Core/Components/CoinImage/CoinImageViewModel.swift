//
//  CoinImageViewModel.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 28.03.2023.
//

import Combine
import Foundation
import SwiftUI

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self] _ in
                self?.isLoading = false
            } receiveValue: { returnedImage in
                self.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
