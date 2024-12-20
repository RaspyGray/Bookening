//
//  ContentView.swift
//  Libri
//
//  Created by Antonio Nardone on 04/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tab = 1
    @State private var showingsheet = false
    @State private var selectedbook: UUID? = nil
    @Environment(\.colorScheme) var colorScheme
    
    /* Things i copied from Hackingwithswift... :
     init() {
     let appear = UINavigationBarAppearance()
     
     let atters: [NSAttributedString.Key: Any] = [
     .font: UIFont(name: "NewYork-Bold", size: 40)!
     ]
     
     appear.largeTitleTextAttributes = atters
     appear.titleTextAttributes = atters
     UINavigationBar.appearance().standardAppearance = appear
     UINavigationBar.appearance().compactAppearance = appear
     UINavigationBar.appearance().scrollEdgeAppearance = appear
     }
     End of things i copied from hackingwithswift */
    
    
    var body: some View {
        
        /* Text("Home").font(.custom("NewYork-bold", size: 45))
         .frame(maxWidth: .infinity, alignment: .leading)
         .padding(.leading, 25) */
        
        
        
    
            
            NavigationStack {
                ScrollView {     VStack  {  Text("Home").font(.custom("NewYork-bold", size: 45))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 25) .padding(.bottom, 25)
                    
                    HStack {Text("Favorites").font(.custom("NewYork-bold", size: 26))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 26)}
                    ScrollView(.horizontal,showsIndicators: false) { HStack {
                        ScrollView(.horizontal,showsIndicators: false) { HStack {
                            VStack {
                                Image("Harry potter cover")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 225)
                                    .onTapGesture {
                                        showingsheet.toggle()
                                        selectedbook = HarryPotter.id
                                    }
                                Text("Harry Potter")
                                    .font(.caption)
                            }
                            VStack {
                                Image("Codice da vinci cover")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 225).onTapGesture {
                                        showingsheet.toggle()
                                        selectedbook = daVinci.id
                                    }
                                Text("Il Codice Da Vinci")
                                    .font(.caption)
                            }
                            VStack {
                                Image("Power cover")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 225).onTapGesture {
                                        
                                        showingsheet.toggle()
                                        selectedbook = Power.id
                                    }
                                Text("Power")
                                    .font(.caption)
                            }
                            VStack {
                                Image("Business cover")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 225).onTapGesture {
                                        showingsheet.toggle()
                                        selectedbook = Business.id
                                    }
                                Text("Conquer your business")
                                    .font(.caption)
                            }
                            
                            VStack {
                                Image("Little prince cover")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 225).onTapGesture {
                                        showingsheet.toggle()
                                        selectedbook = LittlePrince.id
                                    }
                                Text(LittlePrince.name)
                                    .font(.caption)
                            }
                            
                            
                            
                        }
                        .padding(.leading, 25)
                            .padding(.trailing, 20)}
                        
                    
                    }
                    }  .shadow(radius: 20)
                    
                    HStack {Text("Recommended").font(.custom("NewYork-bold", size: 26))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 26)}
                    ScrollView(.horizontal,showsIndicators: false) { HStack {
                        VStack {
                            Image ("Odyssey cover")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 225)
                                .onTapGesture {
                                    showingsheet.toggle()
                                    selectedbook = Odyssey.id
                                }
                            Text(Odyssey.name)
                                .font(.caption)
                        }
                        VStack {
                            Image("Hobbit cover")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 225).onTapGesture {
                                    showingsheet.toggle()
                                    selectedbook = Hobbit.id
                                    
                                }
                            Text(Hobbit.name)
                                .font(.caption)
                        }
                        VStack {
                            Image("Heidi cover")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 225).onTapGesture {
                                    
                                    showingsheet.toggle()
                                    selectedbook = Heidi.id
                                }
                            Text(Heidi.name)
                                .font(.caption)
                        }
                    }  .padding(.leading, 25)
                        .padding(.trailing, 20)} .shadow(radius: 20)
                    
                    
                    VStack {Text("Top Sellers").font(.custom("NewYork-bold", size: 26))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 26)};
                    ScrollView(.horizontal,showsIndicators: false) {   HStack
                        {
                            ScrollView(.horizontal,showsIndicators: false)
                            { HStack {
                                VStack {
                                    Image("Cruel cover")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 225)
                                        .onTapGesture {
                                            showingsheet.toggle()
                                            selectedbook = Cruel.id
                                        }
                                    Text("The Cruel Prince")
                                        .font(.caption)
                                }
                                VStack {
                                    Image("Roses cover")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 225).onTapGesture {
                                            showingsheet.toggle()
                                            selectedbook = Roses.id
                                        }
                                    Text(Roses.name)
                                        .font(.caption)
                                }
                                VStack {
                                    Image("Kill cover")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 225).onTapGesture {
                                            
                                            showingsheet.toggle()
                                            selectedbook = Kill.id
                                        }
                                    Text("Power")
                                        .font(.caption)
                                }

                                
                                
                                
                            }
                            .padding(.leading, 25)
                                .padding(.trailing, 20)}
                            
                            
                        }
                        
                    }  .shadow(radius: 20)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                        .sheet(isPresented: $showingsheet)
                    { switch selectedbook {
                    case HarryPotter.id:
                        
                        VStack{ HStack{ VStack{   Image ("Harry potter cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (HarryPotter.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:90, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(HarryPotter.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(HarryPotter.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(HarryPotter.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(HarryPotter.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(HarryPotter.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(HarryPotter.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Harry potter cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                    case daVinci.id:

                        VStack{ HStack{ VStack{   Image ("Codice da vinci cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (daVinci.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(daVinci.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(daVinci.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(daVinci.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(daVinci.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(daVinci.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(daVinci.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Codice da vinci cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                    case Power.id:
                        
                        VStack{ HStack{ VStack{   Image ("Power cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Power.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Power.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Power.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Power.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Power.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Power.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Power.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Power cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                    case Heidi.id:
                        VStack{ HStack{ VStack{   Image ("Heidi cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Heidi.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Heidi.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Heidi.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Heidi.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Heidi.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Heidi.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Heidi.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Heidi cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                    case Odyssey.id:
                        
                        VStack{ HStack{ VStack{   Image ("Odyssey cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Odyssey.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Odyssey.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Odyssey.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Odyssey.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Odyssey.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Odyssey.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Odyssey.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Odyssey cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                    case LittlePrince.id:
                        
                        VStack{ HStack{ VStack{   Image ("Little prince cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (LittlePrince.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(LittlePrince.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(LittlePrince.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(LittlePrince.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(LittlePrince.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(LittlePrince.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(LittlePrince.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Little prince cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                    case Business.id:
                        
                        VStack{ HStack{ VStack{   Image ("Business cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Business.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Business.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Business.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Business.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Business.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Business.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Business.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Business cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                        
                    case Hobbit.id:
                        
                        VStack{ HStack{ VStack{   Image ("Hobbit cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Hobbit.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Hobbit.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Hobbit.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Hobbit.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Hobbit.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Hobbit.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Hobbit.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Hobbit cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                        
                        
                    case Kill.id:
                        
                        
                        VStack{ HStack{ VStack{   Image ("Kill cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Kill.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Kill.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Kill.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Kill.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Kill.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Kill.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Kill.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Kill cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                    case Cruel.id:
                        
                        
                        VStack{ HStack{ VStack{   Image ("Cruel cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Cruel.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Cruel.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Cruel.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Cruel.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Cruel.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Cruel.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Cruel.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Cruel cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                    case Roses.id:
                        
                        
                        VStack{ HStack{ VStack{   Image ("Roses cover").resizable().frame(width: 150, height: 225).onTapGesture {
                            showingsheet.toggle()
                        }   .shadow(color: .black, radius: 40, x: 5, y: 5)
                                .position(x: 120, y: 165)
                            //  .offset(x: 30)
                            //  .offset(y:-220)
                        }
                            ;  Spacer()
                            
                            Text (Roses.name).font(.system(size: 24, weight: .bold)).colorInvert()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 50)
                                .position(x:100, y:162)
                            // .offset(x:-5)
                            // .offset(y:-220)
                        }
                         .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        
                                
                            VStack {
                           HStack     {
                                    RoundedRectangle(cornerRadius: 15)
                                   
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Roses.author)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Author")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                               
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Roses.rating)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Rating")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                        VStack {
                                                            Spacer()
                                                            Text(Roses.genre)
                                                                .font(.title2)
                                                                .bold()
                                                                .textSelection(.enabled)
                                                                .colorInvert()
                                                            Spacer()
                                                        }
                                                    )
                                                    .overlay(
                                                        Text("Genre")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                    )
                                        
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Roses.releaseDate)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Pubblication Year")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                            }
                                HStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Roses.numberOfPages)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Number of pages")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                    RoundedRectangle(cornerRadius: 15)
                                        .background(.ultraThinMaterial).cornerRadius(15)
                                        .frame(width: 190, height: 140)
                                        .overlay(
                                                VStack {
                                                        Spacer()
                                                    Text(Roses.EstReadTime)
                                                            .font(.title2)
                                                            .bold()
                                                            .textSelection(.enabled)
                                                            .colorInvert()
                                                        Spacer()
                                                        }
                                                            )
                                                .overlay(
                                                        Text("Est. Read. Time")
                                                            .font(.body)
                                                            .foregroundColor(.white)
                                                            .opacity(0.8)
                                                            .padding(10),
                                                        alignment: .bottomTrailing
                                                                                )
                                     }
                            }
                            
                         //Book info up here
                        }
                        
                        
                        // for the background --->
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            Image("Roses cover")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .blur(radius: 12)
                                .brightness(-0.08)
                                .scaleEffect(x: 1.3, y: 1.3)
                            
                        )
                        
                        
                        .presentationDetents([.large])
                        
                        
                        
                    default:
                        Text ("Error, try opening again.")
                    }}
                    
                }
                } .background(
                    colorScheme == .dark
                        ? Color.black // Colore per modalità scura
                        : Color(red: 245/255, green: 237/255, blue: 226/255))
                
                
                
                
                
            }
            
            
           
        
       
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
