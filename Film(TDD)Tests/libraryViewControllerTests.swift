//
//  libraryViewControllerTests.swift
//  Film(TDD)Tests
//
//  Created by Kato Steven Mubiru on 24/04/2023.
//

import XCTest

@testable import Film_TDD_

final class libraryViewControllerTests: XCTestCase {
     
    var sut : libraryViewController!
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController("libraryVCID") as! libraryViewController
        _ = sut.view
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   //MARK: Nil Checks
    func testLibraryVC_TableViewShouldNotBeNil(){
        XCTAssertNotNil(sut.libraryTableView)
    }
}
