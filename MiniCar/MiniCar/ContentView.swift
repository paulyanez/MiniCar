//
//  ContentView.swift
//  MiniCar
//
//  Created by Paul Yanez on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Darkgray")
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                ZStack {
                    Image("minilogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width / 1.4)
                        .opacity(0.2)
                        .offset(y: -10)
                    Image("mini")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width)
                        .scaleEffect(x: 1.1, y: 1.1)
                        .contrast(1.2)
                        .shadow(color: .white.opacity(0.8), radius: 100, x: 0, y: 30)
                        .frame(height: 320, alignment: .bottom)
                        .offset(y: 20)
                }
                
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 20, height: 6)
                        .foregroundColor(.white)
                        .padding(.top, 4)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 6, height: 6)
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top, 4)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 6, height: 6)
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top, 4)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 6, height: 6)
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top, 4)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 6, height: 6)
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top, 4)
                }
                .padding(.top)
                
                VStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(height: 400)
                            .frame(maxWidth: UIScreen.main.bounds.width)
                        VStack {
                            Text("Mini Cooper")
                                .font(.system(size: 40))
                                .fontWeight(.medium)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.black)
                            
                            Text("With its luscious exterior design and roomy interior crafted from the finest materials, the MINI Clubman is the most sophisticated sports hatchback we've ever made. If that's not enough, its split-rear doors and optional ALL4 all-wheel drive put it in a class of its own.")
                                .font(.callout)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.black)
                                .padding(.top, -20)
                            
                            HStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.orange)
                                        .padding(3)
                                        .overlay(Circle().stroke(Color.orange, lineWidth: 0.8))
                                                    
                                }
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.green)
                                
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.indigo)
                                
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.black)
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.red)
                                
                                Spacer()
                                
                                HStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 30)
                                            .fill(.gray.opacity(0.2))
                                            .frame(width: 84, height: 34)
                                        
                                        HStack(spacing: 10.0) {
                                            Text("-")
                                                .foregroundColor(.black.opacity(0.6))
                                            Text("1")
                                                .foregroundColor(.black.opacity(0.6))
                                            
                                            ZStack {
                                                Circle()
                                                    .frame(width: 24)
                                                    .foregroundColor(.black)
                                                Text("+")
                                                    .foregroundColor(.white)
                                                    .offset(x: -0.5, y: -1.5)
                                            }
                                        }
                                        .offset(x: 3)
                                    }
                                }
                            }
                            .frame(height: 60)

                            HStack {
                                HStack {
                                    Button(action: {
                                        // Action to perform when button is tapped
                                    }, label: {
                                        Text("CONTINUE")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.main.bounds.width / 1.2, height: 50)
                                            .background(Color(#colorLiteral(red: 1, green: 0.557215035, blue: 0, alpha: 1)))
                                            .clipShape(Capsule())
                                    })
                                }
                                .frame(height: 60)
                            }
                            .frame(height: 80, alignment: .bottom)
                        }
                        .padding(.horizontal, 30)
                    }
                }
                .ignoresSafeArea()
            }
            
            VStack {
                HStack {
                    ZStack {
                        Button(action: {
                            // action to perform when button is tapped
                        }) {
                            Image(systemName: "arrow.left")
                                .renderingMode(.original)
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(16)
                                .background(Color.white.opacity(0))
                                .clipShape(Circle())
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("BUILD YOUR OWN")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        Button(action: {
                            // action to perform when button is tapped
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .renderingMode(.original)
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(16)
                                .background(Color.white.opacity(0))
                                .clipShape(Circle())
                        }
                    }
                }
                .padding(.horizontal, 16)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, 20)
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
