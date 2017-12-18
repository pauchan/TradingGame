import Foundation

struct Company: Codable {
    let symbol: String
    let name: String
    let lastSale: Float
    let marketCap: Float
    let ipoYear: Int
    let sector: String
    let industry: String
    let summaryQuote: URL
}
