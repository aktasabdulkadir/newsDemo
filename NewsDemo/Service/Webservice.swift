
import Foundation
import UIKit


struct Webservice {
    func downloadNews (url: URL, completion: @escaping ([News]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                let haberDizisi = try? JSONDecoder().decode([News].self, from: data)
                if let haberDizisi = haberDizisi {
                    completion(haberDizisi)
                    
                }
                
            }
        }.resume()
    
    }
   
}
