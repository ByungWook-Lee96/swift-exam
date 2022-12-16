//
//  ZStackView.swift
//  SortDemo
//
//  Created by 병욱 on 2022/12/16.
//

import SwiftUI

extension HorizontalAlignment{
    enum MyHorizontal : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}
extension VerticalAlignment{
    enum MyVertical : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let myAlignment = VerticalAlignment(MyVertical.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment, vertical: .myAlignment)
}

// d를 사용하면 상대적인 부분이라서 .leading인 경우 나를 제외한 영역이 왼쪽 정렬, .trailing인 경우 나를 제외한 영역이 오른쪽 정렬로 생각헤야 함
struct ZStackView: View {
    var body: some View {
//        ZStack(alignment: .myAlignment){
//            Rectangle()
//                .foregroundColor(Color.green)
//                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[.trailing]}
//                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[VerticalAlignment.bottom]}
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .foregroundColor(Color.red)
//                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[VerticalAlignment.top]}
//                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[HorizontalAlignment.center]}
//                .frame(width: 100, height: 100)
//            Circle()
//                .foregroundColor(Color.orange)
//                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[.leading]}
//                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[.bottom]}
//                .frame(width: 100, height: 100)
//
//        }
        ZStack(alignment: .myAlignment){
            Rectangle()
                .foregroundColor(Color.green)
                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[.leading]}
                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[VerticalAlignment.bottom]}
                .frame(width: 100, height: 100)
            Rectangle()
                .foregroundColor(Color.red)
                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[VerticalAlignment.center]}
                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[HorizontalAlignment.trailing]}
                .frame(width: 100, height: 100)
            Circle()
                .foregroundColor(Color.orange)
                .alignmentGuide(HorizontalAlignment.myAlignment){ d in d[.leading]}
                .alignmentGuide(VerticalAlignment.myAlignment){ d in d[.top]}
                .frame(width: 100, height: 100)

        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
