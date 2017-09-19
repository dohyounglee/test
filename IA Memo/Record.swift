//
//  Record.swift
//  IA Memo
//
//  Created by DOHYOUNG LEE on 2017. 9. 13..
//  Copyright © 2017년 DOHYOUNG LEE. All rights reserved.
//

import UIKit

class Record: UIViewController {
    
    @IBOutlet weak var RecordTextView: UITextView!
    
    var MemoData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // RecordTextView.text = "Hello world"
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        if MemoData.count == 0 {
            RecordTextView.text = "..."
        }else{
            let memoNumber = UserDefaults.standard.object(forKey: "memoNumber") as! Int
            RecordTextView.text = MemoData[memoNumber]
        }
    }
    
    @IBAction func Save(_ sender: Any) {
//        RecordTextView.text = "Bye world"
        MemoData.insert(RecordTextView.text, at: 0)
        UserDefaults.standard.set(MemoData, forKey: "MemoData")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
