//
//  JsonResult.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import Foundation

struct JsonResult: Codable {
    var results: [Petition]
    
    struct Petition : Codable{
        var id: String?

    }
}
