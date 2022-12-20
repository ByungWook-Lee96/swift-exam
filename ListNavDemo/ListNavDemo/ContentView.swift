//
//  ContentView.swift
//  ListNavDemo
//
//  Created by MK-Mac-384 on 2022/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView{
            List{
                // carData 배열 요소를 구현
                ForEach(carStore.cars){ car in
                    ExtractedView(car: car)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// 정리를 위해서 ExtractedView 한 결과
struct ExtractedView: View {
    
    var car: Car
    
    var body: some View {
        
        NavigationLink(destination: CarDetail(selectedCar: car)){
            HStack{
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
        
    }
}
