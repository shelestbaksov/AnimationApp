//
//  DataManager.swift
//  AnimationApp
//
//  Created by Leysan Latypova on 31.01.2022.
//

import Spring


class DataManager {
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .shake,
        .pop,
        .morph,
        .squeeze,
        .wobble,
        .swing,
        .zoomIn,
        .zoomOut,
        .flash
    ]
    
    private init() {}
}
