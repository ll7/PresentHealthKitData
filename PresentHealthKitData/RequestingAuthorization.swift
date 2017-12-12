//
//  RequestingAuthorization.swift
//  PresentHealthKitData
//
//  Created by Lennart Luttkus on 12.12.17.
//  Copyright © 2017 Lennart Luttkus. All rights reserved.
//

import Foundation

// Requesting Authorization
import HealthKit

guard HKHealthStore.isHealthDataAvailable() else { return }

let healthStore = HKHealthStore()
let shareableTypes = Set([     ])
let readableTypes = Set([     ])

// Presents authorization sheet to user the first time this is called.
healthStore.requestAuthorization(toShare: shareableTypes,
                                 read: readableTypes) { success, error in
                                    // Handle authorization response here.
}
