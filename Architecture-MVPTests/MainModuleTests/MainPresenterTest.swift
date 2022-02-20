//
//  MainPresenterTest.swift
//  Architecture-MVP
//
//  Created by Ruslan on 08.02.2022.
//

import XCTest
@testable import Architecture_MVP

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {
    
    var model: Person!
    var view: MockView!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        
        model = Person(firstName: "Baz", secondName: "Bar")
        view = MockView()
        presenter = MainPresenter(person: model, view: view)
    }

    override func tearDownWithError() throws {
        
        model = nil
        view = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(model, "model is not nil")
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(model.firstName, "Baz")
        XCTAssertEqual(model.secondName, "Bar")
    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
