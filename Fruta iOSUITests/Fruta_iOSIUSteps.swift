//
//  Fruta_iOSIUSteps.swift
//  Fruta
//
//  Created by lt0821 on 10/15/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

extension Fruta_iOSUITests {
    
    func smoothieListAssertion(_ app: XCUIApplication,_ index: Int) {
        let smoothieArray:Array = smoothieDictionary[index]!
        //Searches element if out of screen
        while !app.images["image-"+smoothieArray[0]].exists {
            app.swipeUp()
        }
        //Asserts image is present
        XCTAssert(app.images["image-"+smoothieArray[0]].exists, "Image is not present")
        //Asserts title is correct
        XCTAssertEqual(smoothieArray[1], app.staticTexts["title-"+smoothieArray[0]].label, "Mismatch in title")
        //Asserts ingredients are correct
        XCTAssertEqual(smoothieArray[2], app.staticTexts["ingredients-"+smoothieArray[0]].label, "Mismatch in ingredients")
        //Asserts ca;ories are correct
        XCTAssertEqual(smoothieArray[3], app.staticTexts["energy-"+smoothieArray[0]].label, "Mismatch in calories")
    }
    
    func verifyDescription(_ app: XCUIApplication,_ index: Int) {
        let smoothieArray:Array = smoothieDictionary[index]!
        //Searches element if out of screen
        while !app.images["image-"+smoothieArray[0]].exists {
            app.swipeUp()
        }
        app.buttons[smoothieArray[0]].tap()
        //Searches element if out of screen
        while !app.staticTexts["description-"+smoothieArray[0]].exists {
            app.swipeUp()
        }
        //Asserts description is correct
        XCTAssertEqual(smoothieArray[4], app.staticTexts["description-"+smoothieArray[0]].label, "Mismatch in description")
        FruitEnum.MenuNav.element.tap()
    }
}
