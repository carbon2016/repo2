//
//  ViewController.swift
//  MVVM101
//
//  Created by Auttapon Duangumporn on 19/9/2562 BE.
//  Copyright © 2562 mm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var resLabel: UILabel!
    
    let vm = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm.delegate = self
    }

    @IBAction func touchCalculateButton(_ sender: Any) {
        let n1 = Int(tf1.text ?? "") ?? 0
        let n2 = Int(tf2.text ?? "") ?? 0
        vm.calculate(n1: n1, n2: n2)
    }
}

extension ViewController: ViewModelDelegate {
    func didCalculateNumber(res: Int) {
        resLabel.text = "\(res)"
        //....
    }
}

protocol ViewModelDelegate: class {
    func didCalculateNumber(res: Int)
}
// -----------------------------------------
class ViewModel {
    weak var delegate: ViewModelDelegate? = nil
    let mathHelper = MathHelper()
    
    func calculate(n1: Int, n2: Int)  {
        let res = mathHelper.calculate(n1: n1, n2: n2)
        delegate?.didCalculateNumber(res: res)
    }
    
    
//    @discardableResult
//    func calculate(n1: Int, n2: Int) -> Int {
//        let res = n1 + n2
//        delegate?.didCalculateNumber(res: res)
//        return res
//    }
    
}

// -----------------------------------------
class MathHelper {
    func calculate(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
}





// -----------------------------------------
//class MathJaa {
//    static var c = 0
//    func calculate(n1: Int, n2: Int) -> Int {
//        MathJaa.c += 1
//        return n1 + n2
//    }
//}

