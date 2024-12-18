//
//  Modelli?.swift
//  Libri
//
//  Created by Antonio Nardone on 05/12/24.
//

import SwiftUI

struct Libri {
    var id = UUID()
    var name: String
    var price: Double
    var author: String
    var releaseDate: String
    var genre: String
    var numberOfPages: String
    var EstReadTime: String
    var rating: String
}
let daVinci = Libri(name: "Da Vinci Code", price: 12.00, author: "Dan Brown", releaseDate: "2003", genre: "Science Fiction", numberOfPages: "489", EstReadTime: "16 Hours", rating: "4")
let Power = Libri(name: "The 48 Laws of Power", price: 14.99, author: "Robert Greene", releaseDate: "1998", genre: "Self Help", numberOfPages: "452", EstReadTime: "15 Hours", rating: "4")
let HarryPotter = Libri(name: "Harry Potter and the Sorcerer's Stone", price: 12.99, author: "J.K. Rowling", releaseDate: "1997", genre: "Fantasy, Young Adult", numberOfPages: "309", EstReadTime: "10 Hours", rating: "4.5")
let Business = Libri(name: "Conquer Your Business & Prosper", price: 9.99, author: "Nesha Brown", releaseDate: "2021", genre: "Business", numberOfPages: "122", EstReadTime: "8 Hours", rating: "4")
let LittlePrince = Libri(name: "The Little Prince", price: 8.00, author: "Antoine de Saint-Exupery", releaseDate: "1943", genre: "Fiction, Classic", numberOfPages: "96", EstReadTime: "3 Hours", rating: "4")
let Hobbit = Libri(name: "The Hobbit", price: 20, author: "J.R.R Tolkien", releaseDate: "1937", genre: "Fantasy, Young Adult", numberOfPages: "310", EstReadTime: "10 Hours", rating: "4")
let Iliad = Libri(name: "The Iliad", price: 30, author: "Homer", releaseDate: "1989", genre: "Fantasy, Classic poetry", numberOfPages: "750", EstReadTime: "30 Hours", rating: "3")
let Odyssey = Libri(name: "The Odyssey", price: 12.99, author: "Homer", releaseDate: "1989", genre: "Fantasy, Classic poetry", numberOfPages: "541", EstReadTime: "25 Hours", rating: "3")
let Alchemist = Libri(name: "The Alchemist", price: 20.99, author: "Paulo Coelho", releaseDate: "1988", genre: "Fiction, Classic", numberOfPages: "197", EstReadTime: "8 Hours", rating: "3")
let Alice = Libri(name: "Alice in Wonderland", price: 12.99, author: "Lewis Carroll", releaseDate: "1865", genre: "Fiction, Classic", numberOfPages: "96", EstReadTime: "3 Hours", rating: "4")
let TheHitchhiker = Libri(name: "The Hitchhiker's Guide to the Galaxy", price: 11.99, author: " Douglas Adams", releaseDate: "1979", genre: "Fiction, Classic", numberOfPages: "193", EstReadTime: "7 Hours", rating: "4")
let TheKiteRunner = Libri(name: "The Kite Runner", price: 15.99, author: "Khaled Hosseini", releaseDate: "2011", genre: "Historical Fiction", numberOfPages: "371", EstReadTime: "14 Hours", rating: "4")
let Heidi = Libri(name: "Heidi", price: 13.99, author: " Johanna Spyri", releaseDate: "2006", genre: "Romance, for children", numberOfPages: "64", EstReadTime: "2 Hours", rating: "4")
let TheSecret = Libri(name: "The Secret", price: 10.99, author: "Rhonda Byrne", releaseDate: "2006", genre: "Self Help", numberOfPages: "202", EstReadTime: "8 Hours", rating: "4")
let Cruel = Libri(name: "The Cruel Prince", price: 22.00, author: "Holly Black", releaseDate: "2018", genre: "Fantasy", numberOfPages: "370", EstReadTime: "14 Hours", rating: "4")
let Roses = Libri(name: "A Court of Thorns and roses", price: 19.99, author: "Sarah J Maas.", releaseDate: "2016", genre: "Fantasy, Romance", numberOfPages: "419", EstReadTime: "15 Hours", rating: "5" )
let Kill = Libri(name: "Kill Switch", price: 19.99, author: "Penelope Douglas", releaseDate: "2019", genre: "Dark Romance", numberOfPages: "668", EstReadTime: "20 Hours", rating: "4")
