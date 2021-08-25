import Foundation

class DataService {
    
    func getData() -> [Quote] {
        
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            print("Path doesn't exist")
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let jsondecode = JSONDecoder()
            do {
                var quoteData = try jsondecode.decode([Quote].self, from: data)
                
                for i in 0..<quoteData.count {
                    quoteData[i].id = UUID()
                }
                
                return quoteData
                
                
            } catch {
                // Invalid JSON
                print("Invalid JSON")
                print(error)
            }
        } catch {
            print(error)
        }
        return [Quote]()
    }
    
}
