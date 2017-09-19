//
//  ViewController.swift
//  IA Memo
//
//  Created by DOHYOUNG LEE on 2017. 9. 12..
//  Copyright © 2017년 DOHYOUNG LEE. All rights reserved.
//

import UIKit

class Main: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var MemoData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        return MemoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memoNumber = indexPath.row
        UserDefaults.standard.set(memoNumber, forKey: "memoNumber")
        self.performSegue(withIdentifier: "ToRecord", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

