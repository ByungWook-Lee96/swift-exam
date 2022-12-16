//
//  CustomAlignView.swift
//  SortDemo
//
//  Created by 병욱 on 2022/12/16.
//

import SwiftUI

// 커스텀 정렬(수직 정렬 타입)
extension VerticalAlignment{
    private enum OneThird : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d.height / 3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
}

struct CustomAlignView: View {
    var body: some View {
        HStack(alignment: .oneThird){
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.red)
                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom]})
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(Color.orange)
                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top]})
                .frame(width: 50, height: 200)
        }
    }
    
    struct CustomAlignView_Previews: PreviewProvider {
        static var previews: some View {
            CustomAlignView()
        }
    }
}
