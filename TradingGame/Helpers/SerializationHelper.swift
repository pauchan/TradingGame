import Foundation

//func dataFromFile(_ named: String) -> Data? {
//    guard let fileurl = Bundle.main.url(forResource: named, withExtension: "csv") else { return nil }
//    return try? String( (contentsOf: fileurl)
//}

func companiesFromFile(_ named: String) -> [Company]? {
    guard let fileurl = Bundle.main.url(forResource: named, withExtension: "csv") else { return nil }
    return try?
}

func dictionaryFromData(_ data: Data) -> [String: String] {
    UInt8
    let rows = data.split(separator: "\n")

}
