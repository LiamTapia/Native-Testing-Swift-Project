//
//  Fruta_iOSUITests.swift
//  Fruta iOSUITests
//
//  Created by Hugo Landines on 01/10/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class Fruta_iOSUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.buttons["berry-blue"].tap()
        print(app.label)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    @MainActor
    func testExercise1() throws {
        let app = XCUIApplication()
        app.launch()
        
        for i in 1...15 {
            smoothieListAssertion(app ,i)
        }
    }
    
    @MainActor
    func testExercise2() throws {
        let app = XCUIApplication()
        app.launch()
        
        let smoothieCheck = [3,15]
        for i in smoothieCheck {
            verifyDescription(app ,i)
        }
    }
    
    @MainActor
    func testExercise3() throws {
        let app = XCUIApplication()
        app.launch()
        
        //Use Case A
        let noFavorites: String = "Add some smoothies to your favorites!"
        FruitEnum.Favorites.element.tap()
        //Asserts favorites text is correct
        XCTAssertEqual(noFavorites, app.staticTexts["empty-favorites-message"].label, "Mismatch in text")
            
        //Use Case B
        FruitEnum.Menu.element.tap()
        app.buttons["berry-blue"].tap()
        app.buttons["favorite-button-berry-blue"].tap()
        FruitEnum.MenuNav.element.tap()
        FruitEnum.Favorites.element.tap()
        //Asserts image is present
        XCTAssert(app.images["image-berry-blue"].exists, "Image is not present")
    }
    
    @MainActor
    func testExercise4() throws {
        let orangeSmoothies = [1,2,4,9,12]
        let app = XCUIApplication()
        app.launch()
        

        FruitEnum.Search.element.tap()
        FruitEnum.Search.element.typeText("Orange")
        
        for i in orangeSmoothies {
            smoothieListAssertion(app ,i)
        }
    }
}
