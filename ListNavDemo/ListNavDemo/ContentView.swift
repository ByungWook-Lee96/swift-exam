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
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(destination:
                                                            AddNewCar(carStore: self.carStore)){
                Text("Add")
                    .foregroundColor(.blue)
            }, trailing: EditButton())
        }
    }
    func deleteItems(at offsets: IndexSet){
        carStore.cars.remove(atOffsets: offsets)
    }

    func moveItems(from source: IndexSet, to destination: Int){
        carStore.cars.move(fromOffsets: source, toOffset: destination)
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
