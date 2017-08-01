//
//  Helpers.swift
//  Jiq
//
//  Created by Arash on 8/1/17.
//  Copyright © 2017 Taskulu. All rights reserved.
//

//
//  StringHelper.swift
//  Taskulu
//
//  Created by Arash on 5/24/16.
//  Copyright © 2016 Taskulu. All rights reserved.
//

import UIKit

public extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
