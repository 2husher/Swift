//
//  Major.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Major {
    private var anxietyLevel: Int = 0

    mutating func makeStatement() {
        anxietyLevel++
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
    
}