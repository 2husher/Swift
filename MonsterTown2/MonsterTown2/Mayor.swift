//
//  Mayor.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0

    mutating func claim() {
        anxietyLevel++
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence. \(anxietyLevel)")
    }
}