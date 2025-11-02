//
//  DetailViewModel.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 01/11/25.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("RECEIVED COIN DETAIL DATA")
                print(returnedCoinDetails?.id)
            }
            .store(in: &cancellables)
    }
}
