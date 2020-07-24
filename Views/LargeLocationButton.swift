//
//  LargeLocationButton.swift
//  SwiftUIVacationPlanner
//
//  Created by Henry Havens on 7/22/20.
//  Copyright © 2020 Henry Havens. All rights reserved.
//

import SwiftUI

struct LargeLocationButton: View {
    
    var city:String
    var cost:Int
    var averageRating:Double
    var numberOfRatings:Int
    var imageString:String
    var height:CGFloat = 310
    
    var body: some View {
        VStack(spacing: 0) {
            Image(imageString)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 200)
                .background(Color.green)
                .clipped()
            HStack {
                VStack(alignment: .leading) {
                   Text(city)
                    .font(.system(size: 30, weight: .bold))
                    Text("Starting at $\(cost)")
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                }
                Spacer()
                VStack(alignment: .trailing) {
                    HStack {
                        Spacer()
                        ForEach(0..<Int(averageRating)){_ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.init(red: 220/255, green: 220/255, blue: 0))
                        }
                    }.frame(width: 150)
                    
                    HStack {
                        Text("\(numberOfRatings)+ ratings")
                            .frame(width: 90)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                        Text("\(String(averageRating).split(separator: ".")[0].description).\(String(averageRating).split(separator: ".")[1].description)/5")
                            .font(.system(size: 20))
                            .frame(width: 60)
                    }
                }
            }.frame(height: 70)
            .padding()
        }
        .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
    .cornerRadius(10)
//        .shadow(radius: 4, y: 4)
        .frame(height: height)
    .clipped()
    }
}

struct LargeLocationButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeLocationButton(city: "city", cost: 0, averageRating: 2.5, numberOfRatings: 1000, imageString: "amsterdam")
    }
}
