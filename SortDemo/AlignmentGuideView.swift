//
//  AlignmentGuideView.swift
//  SortDemo
//
//  Created by 병욱 on 2022/12/16.
//

import SwiftUI

struct AlignmentGuideView: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: 120, height: 50)
            Rectangle()
                .foregroundColor(Color.red)
//                 alignmentGuide를 사용하기 위해서는 부모 스택 정렬 타입이 일치해야 함(둘 다 leading)
//                    .alignmentGuide(.leading, computeValue: { d in 120.0}) // <- 120포인트
//                    .alignmentGuide(.leading, computeValue: { d in d.width / 3}) // 해당 막대 기준으로 뷰의 앞쪽 3분의 1 위치로 배치(해당 막대 외 2개의 막대가 3분의 1위치로 가는듯)
                .alignmentGuide(.leading, computeValue: {
                    d in d[HorizontalAlignment.trailing] + 20
                }) // 2개의 막대 시작부분에서 +20 더 왼쪽으로 가고,기존 막대와 반대로 width 200감
                .frame(width: 200, height: 50)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 180, height: 50)
        }
    }
}

struct AlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideView()
    }
}
