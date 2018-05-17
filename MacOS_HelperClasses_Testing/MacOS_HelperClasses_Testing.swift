//
//  MacOS_HelperClasses_Testing.swift
//  MacOS_HelperClasses_Testing
//
//  Created by Holger Hinzberg on 17.05.18.
//

import XCTest

class MacOS_HelperClasses_Testing: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample()
    {
         self.testRandomNumbers()
        self.testStringHelper()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testRandomNumbers()
    {
        for i:Int in 1  ..< 40
        {
            let value = Int.random(lower: i, upper: i + 10 )
            XCTAssert(value >= i && value <= i + 10)
        }
    }
    
    func testStringHelper()
    {
        let value = "The quick brown fox jumps over the lazy dog"
        
        XCTAssert(value.getIndexOf(substring: "quick") == 4)
        XCTAssert(value.caseInsensitiveBeginsWith(anotherString: "the"))
        XCTAssert(value.caseInsensitiveEndsWith(anotherString: "dog"))
        XCTAssert(value.caseInsensitiveContains(substring: "fox"))
        XCTAssert(value.substringRightOf(searchString: "lazy") == " dog")
        XCTAssert(value.substringLeftOf(searchString: "quick") == "The ")
        
        // Neu 2017-07-17
        XCTAssert(value.substringRightFrom(characterCount: 10) == "brown fox jumps over the lazy dog")
        XCTAssert(value.substringLeftFrom(characterCount: 9) == "The quick brown fox jumps over the")
        
        // Neu 2017-08-20
        XCTAssert(value.substringLeftOf(searchString: "quick") == "The ")
        XCTAssert(value.substringRightOf(searchString: "lazy") == " dog")
        
    }
    
    
    
    
}
