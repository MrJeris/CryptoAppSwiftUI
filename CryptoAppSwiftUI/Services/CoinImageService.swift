//
//  CoinImageService.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 28.03.2023.
//

import Combine
import Foundation
import SwiftUI

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubcription: AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubcription = NetworkingManager.download(url: url)
            .tryMap { data -> UIImage? in
                return UIImage(data: data)
            }
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
                self?.imageSubcription?.cancel()
            })
    }
}
