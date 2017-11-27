//
//  TradingAPI.swift
//  TradingGame
//
//  Created by pawel-rusin on 2017/11/25.
//  Copyright © 2017 pawel-rusin. All rights reserved.
//

// use API: https://www.alphavantage.co/

// function=TIME_SERIES_INTRADAY



struct Company {
    let symbol: String
    let name: String
    let lastSale: Float
    let marketCap: Float
    let ipoYear: Int
    let sector: String
    let industry: String
    let summaryQuote: URL
}

import Foundation

class SessionController: URLSessionDelegate {

    let apiKey = "V8ABV10UO0GCMB54"

    func getStocks() -> [Stock] {

        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)

        var cacheDirectory = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
        let cachePath = cacheDirectory?.appending("myCache")

        let cache = URLCache(memoryCapacity: 16384, diskCapacity: 268435456, diskPath: cachePath)

        configuration.urlCache = cache
        configuration.requestCachePolicy = .useProtocolCachePolicy

        session.delegate = self

    }

}



