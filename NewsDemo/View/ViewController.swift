//
//  ViewController.swift
//  NewsDemo
//
//  Created by Abdulkadir AKTAŞ on 19.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.delegate = self
        newsTableView.dataSource = self
        let url = URL(string:" https://raw.githubusercontent.com/atilsamancioglu/BTK-iOSDataSet/master/dataset.json")
       
        Webservice().downloadNews(url: url!) { haberler in// burda fatal error alıyorum if let kontrolü yapıncada  linkteki haberleri alamıyorum (yapmasamda alamıyorum) sanırım apple nin yeni bi güvenlik önlemi ?? exception domains ekledim ama yine olmadı
            if let haberler = haberler {
                print(haberler)
                
            }
        }
       
    }//view did load finished


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "cellk", for: indexPath) as! NewsViewCell
        return cell
    }
    func errorMessage(message: String) {
        let alert = UIAlertController(title: "hata", message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "tamam", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true)
        
    }
    
}

