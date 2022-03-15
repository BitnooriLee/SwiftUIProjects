//
//  FileManager-DocumentDirectory.swift
//  BucketList
//
//  Created by Bitnoori Lee on 2022-03-15.
//

import Foundation
extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
