//
//  Car.swift
//  ListNavDemo
//
//  Created by MK-Mac-384 on 2022/12/20.
//
// VO 같은 스위프트
import Foundation
import SwiftUI

// JSON 파일에 있는 프로퍼티, Identifiable 프로토콜 선언되어서 각 인스턴스(프로퍼티)는 List 뷰에서 식별 가능
struct Car : Codable, Identifiable{
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
