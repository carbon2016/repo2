//
//  ViewModelTests.swift
//  MVVM101Tests
//
//  Created by Auttapon Duangumporn on 19/9/2562 BE.
//  Copyright © 2562 mm. All rights reserved.
//

import XCTest
@testable import MVVM101

// @ Other Delegate Tests
// https://www.mokacoding.com/blog/testing-delegates-in-swift-with-xctest/
class ViewModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // ต้อง เทสที่ Math แทน
    func testCalculate() {
//        let vm = ViewModel()
//
//        let res:Int = vm.calculate(n1: 2, n2: 3)
//        XCTAssertEqual(res, 5)
        
        
    }

}

class MathJaaTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testCalculate() {
        let mathHelper = MathHelper()

        let n1 = 2
        let n2 = 10
        let res:Int = mathHelper.calculate(n1: n1, n2: n2)
        XCTAssertEqual(res, 12)
    }
}

class ViewControllerTests: XCTestCase {
    var sut: ViewController!

    override func setUp() {
        super.setUp()

        sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
        // sut.viewDidLoad()
        sut.loadViewIfNeeded()
        sut.tf1.text = "2"
        sut.tf2.text = "3"
        sut.resLabel.text = "?"
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testCalculate() {
        let calButton = UIButton()
        
        // pre pressCalButton
        XCTAssertEqual(sut.tf1.text, "2")
        XCTAssertEqual(sut.tf2.text, "3")
        XCTAssertEqual(sut.resLabel.text, "?")
        
        calButton.addTarget(sut, action: #selector(ViewController.touchCalculateButton(_:)), for: .touchUpInside)
        calButton.sendActions(for: .touchUpInside)
        
        // post pressCalButton
        XCTAssertEqual(sut.tf1.text, "2")
        XCTAssertEqual(sut.tf2.text, "3")
        XCTAssertEqual(sut.resLabel.text, "5")
        // XCTAssertEqual(sut.resLabel.text, "6")
        
        
    }
    

}




/*
class MathJaaTests: XCTestCase {
    //    let mathja = MathJaa()
    
    var mathja: MathJaa!  // เหมือนเดิม
    
    
    override func setUp() {
        super.setUp()
        mathja = MathJaa()
    }
    
    override func tearDown() {
        mathja = nil
        super.tearDown()
    }
    
    func testCalculate() {
        
        
        let n1 = 2
        let n2 = 10
        let res:Int = mathja.calculate(n1: n1, n2: n2)
        XCTAssertEqual(res, 12)
        XCTAssertEqual(MathJaa.c, 1)
        
        
        let res2:Int = mathja.calculate(n1: n1, n2: n2)
        XCTAssertEqual(res2, 12)
        XCTAssertEqual(MathJaa.c, 2)
        
    }
    
    func testCalculateC() {
        let n1 = 2
        let n2 = 10
        let res:Int = mathja.calculate(n1: n1, n2: n2)
        XCTAssertEqual(res, 12)
        XCTAssertEqual(MathJaa.c, 3) //X   // 1!=3
        
    }
}
*/

