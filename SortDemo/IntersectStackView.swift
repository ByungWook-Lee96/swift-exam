//
//  IntersectStackView.swift
//  SortDemo
//
//  Created by 병욱 on 2022/12/16.
//

import SwiftUI

// 커스텀 정렬(수직 정렬 타입)
extension VerticalAlignment{
    private enum CrossAlignment : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}

struct IntersectStackView: View {
    var body: some View {
        HStack(alignment: .crossAlignment, spacing: 20){
            Circle()
                .foregroundColor(Color.purple)
                .alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center]})  // rectangle과 circle에 alignmentGuide를 넣으면 됨
                .frame(width: 100, height: 100)
            
            VStack(alignment: .center){
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center]})
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct IntersectStackView_Previews: PreviewProvider {
    static var previews: some View {
        IntersectStackView()
    }
}
