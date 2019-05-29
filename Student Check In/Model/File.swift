//  This is a wrapper struct which encapsulates the file details`
//  File.swift
//  Student Check In
//
//  Created by Don Loi on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation

struct File {
    
    var id: String?
    var fileName: String!
    var referenceToFile: String!
    
    init(id: String, fileName: String, referenceToFile: String) {
        self.id = id
        self.fileName = fileName
        self.referenceToFile = referenceToFile
    }
    
    /// Creates a file without an id (should be used to create initial file)
    ///
    /// - Parameters:
    ///   - fileName: <#fileName description#>
    ///   - referenceToFile: <#referenceToFile description#>
    init(fileName: String, referenceToFile: String) {
        self.fileName = fileName
        self.referenceToFile = referenceToFile
    }
}
