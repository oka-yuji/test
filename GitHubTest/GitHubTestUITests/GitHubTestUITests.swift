//
//  GitHubTestUITests.swift
//  GitHubTestUITests
//
//  Created by 岡優志 on 2021/06/26.
//

import XCTest

class TextFieldに数字を入力してボタンを押すとリストのNoに反映されてNameCardViewのtest_nameに反映される事を確認するテスト: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        self.app = XCUIApplication()
        self.app.launch()
    }
    
    func test_TextFieldで入力された数値が反映される() {
        let inputNumTextField = self.app.textFields["inputNumTextField"]
        inputNumTextField.tap()
        inputNumTextField.typeText("5")
        
        let goButton = self.app.buttons["goButton"]
        goButton.tap()
        
        let num = self.app.staticTexts["numText"]
        
        XCTAssertEqual(num.label, "5")
    }
}
