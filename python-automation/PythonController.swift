//
//  PythonController.swift
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//

import Foundation
import PythonKit

class PythonController {
    func runSortDownloads(script: String) -> PythonObject {
        let sys = Python.import("sys")
        sys.path.append("/Users/angel/Documents/dev/swift/automation-clipper/python-automation/Scripts/") // Complete with your global path to ./Scripts
        let file = Python.import(script)
        let response = file.sort_downloads()

        return response
        
    }
}




