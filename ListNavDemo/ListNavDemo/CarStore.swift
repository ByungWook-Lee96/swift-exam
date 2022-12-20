//
//  CarStore.swift
//  ListNavDemo
//
//  Created by MK-Mac-384 on 2022/12/20.
//

import Foundation
import SwiftUI
import Combine

// Car 데이터 저장소 
class CarStore : ObservableObject{
    @Published var cars: [Car]
    
    init (cars: [Car] = []){
        self.cars = cars
    }
}
