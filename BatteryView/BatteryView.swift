//
//  ContentView.swift
//  BatteryView
//
//  Created by dimitri on 21/10/2024.
//

import SwiftUI

struct BatteryView: View {
    
    @State private var temperature: Double = 0
    
    var body: some View {
        ZStack {
            switch temperature {
            case 0...25:
                Color.red
                    .ignoresSafeArea()
            case 26...50:
                Color.orange
                    .ignoresSafeArea()
            case 51...75:
                Color.yellow
                    .ignoresSafeArea()
            case 76...100:
                Color.green
                    .ignoresSafeArea()
            default:
                Color.gray
                    .ignoresSafeArea()
            }
       
            VStack(spacing: 20) {
                switch temperature {
                case 0...25:
                    ZStack {
                        Image(systemName: "battery.0")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.white)
                        Text("\(Int(temperature)) %")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.black)
                            .padding()
                    }
                   
                case 26...50:
                    ZStack {
                        Image(systemName: "battery.25")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.white)
                        Text("\(Int(temperature)) %")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.black)
                            .padding()
                    }
                 
                case 51...75:
                    ZStack {
                        Image(systemName: "battery.50")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.white)
                        Text("\(Int(temperature)) %")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.black)
                            .padding()
                    }
                   
                case 76...99:
                    ZStack {
                        Image(systemName: "battery.75")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.white)
                        Text("\(Int(temperature)) %")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.black)
                            .padding()
                    }
                case 100:
                    ZStack {
                        Image(systemName: "battery.100percent.bolt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.white)
                      
                    }
                default:
                    Text("Erreur : Niveau d'énergie invalide")
                        .font(.title)
                        .foregroundColor(.white)
                }
                Slider(value: $temperature, in: 0...100, step: 5)
                    .tint(.black)
                    .padding()
            }
        }
    }
}

#Preview {
    BatteryView()
}
