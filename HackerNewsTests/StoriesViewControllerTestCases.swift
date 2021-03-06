//
//  StoriesViewControllerTestCases.swift
//  HackerNews
//
//  Created by Siva Cherukuri on 04/02/17.
//  Copyright © 2017 Ducere. All rights reserved.
//

@testable import HackerNews
import XCTest
import UIKit


class StoriesViewControllerTestCases: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testBaseUrl()
    {
        XCTAssertNotNil(kBaseUrl, "Base url should not be nil")
        
    }
    
    func testLoadingScreen()
    {
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        
        /// Util class Object - To check internet connection, to show loading view etc..
        let utilObj = UtilClass()
        
        XCTAssertNotNil(utilObj.showLoadingViewOn(tableView: tableView), "Loading View  should not be nil")
        
        utilObj.removeLoadingView()
        
        XCTAssertTrue(utilObj.spinner.isHidden, "Spinner should hide from super view")
        XCTAssertTrue(utilObj.loadingLabel.isHidden, "Loading label should hide from super view")
        
        
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
}
