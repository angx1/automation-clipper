//
//  PythonController.swift
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//

import Foundation
import PythonKit

class PythonController {
    func runSortDownloads() -> PythonObject {
        let sys = Python.import("sys")
        sys.path.append("/Users/angel/Documents/dev/automation/python-automation/python-automation/")
        let file = Python.import("AutomationScript")
        let response = file.sort_downloads()
        
        return response
        
    }
}


