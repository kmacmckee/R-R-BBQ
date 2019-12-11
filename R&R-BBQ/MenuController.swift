//
//  MenuController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/11/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation

class MenuController {
    
    var menu: [MenuSection] = []
    

    // MARK: - Plate Combos
    var plateCombos = MenuSection(name: "Plate Combos", image: nil, sectionInfo: ["Add a rib for only $2.75"],
                                  items: [
        MenuItem(name: "1 Meat Plate", image: nil, price: 13.99, info: nil, options: ["Pulled Pork",
                                                                                      "Beef Brisket ($1 more)",
                                                                                      "Boneless Chicken Thigh",
                                                                                      "Spicy Andouille Sausage",
                                                                                      "Quarter of Half Chicken",
                                                                                      "2 Ribs"]),
        MenuItem(name: "2 Meat Plate", image: nil, price: 14.99, info: nil, options: ["Pulled Pork",
                                                                                      "Beef Brisket ($1 more)",
                                                                                      "Boneless Chicken Thigh",
                                                                                      "Spicy Andouille Sausage",
                                                                                      "Quarter of Half Chicken",
                                                                                      "2 Ribs"]),
        MenuItem(name: "3 Meat Plate", image: nil, price: 15.99, info: nil, options: ["Pulled Pork",
                                                                                      "Beef Brisket ($1 more)",
                                                                                      "Boneless Chicken Thigh",
                                                                                      "Spicy Andouille Sausage",
                                                                                      "Quarter of Half Chicken",
                                                                                      "2 Ribs"]),
        MenuItem(name: "4 Bone Rib Plate", image: nil, price: 12.99, info: nil, options: nil),
        MenuItem(name: "6 Bone Rib Plate", image: nil, price: 16.99, info: nil, options: nil)
        
        // TODO: "Add a rib for only 2.75" - For rib plate or meat plate?
    ])
    
    
    

    
    // MARK: - Sandwiches
    var sandwiches = MenuSection(name: "Sandwiches", image: nil, sectionInfo: [
        "All sandwiches come loaded with choice of side",
        "Add a coleslaw topper for only $0.75"],
                                 items: [
                                    MenuItem(name: "Pulled Pork", image: nil, price: 8.99, info: "Pickles and Onions", options: nil),
                                    MenuItem(name: "Beef Brisket (Sliced or Chopped)", image: nil, price: 9.99, info: "Pickles and Onions", options: nil),
                                    MenuItem(name: "Pulled Chicken", image: nil, price: 8.99, info: "Lettuce, Tomato, Pickles and Onions", options: nil)
    ])
    
    
    
    // MARK: - Burgers
    var burgers = MenuSection(name: "Burgers", image: nil, sectionInfo: ["1/3 lb smoked burger with choice of side", "Add bacon $0.99"],
                              items: [
                                MenuItem(name: "Caveman", image: nil, price: 12.99, info: "Smoked Sausage, Pulled Pork, Jack Cheese, Fried Jalapeños", options: nil),
                                MenuItem(name: "R&R Special", image: nil, price: 9.99, info: "Bacon, Blue Cheese and an Onion Ring", options: nil),
                                MenuItem(name: "Cheeseburger", image: nil, price: 8.49, info: "Lettuce, Tomato, Pickles and Onions", options: nil)
    ])
    
    
    // MARK: - Salads
    var salads = MenuSection(name: "Salads", image: nil, sectionInfo: ["Romaine Lettuce, Tomatos, Cucumbers, Red Onions, Cheddar Cheese and Croutons with your choice of meat."],
                             items: [
                                MenuItem(name: "Pulled Pork", image: nil, price: 9.99, info: nil, options: ["Ranch", "Blue", "Balsamic Vinaigrette"]),
                                MenuItem(name: "Chopped Brisket", image: nil, price: 10.99, info: nil, options: ["Ranch", "Blue", "Balsamic Vinaigrette"]),
                                MenuItem(name: "Chicken", image: nil, price: 9.99, info: nil, options: ["Ranch", "Blue", "Balsamic Vinaigrette"])
    ])
    
    
    // MARK: - Wings
    var wings = MenuSection(name: "Wings", image: nil, sectionInfo: ["Smoked and deep fried with your choice of sauce: Naked, BBQ, Buffalo or Friggen' Hot"],
                            items: [
                                MenuItem(name: "Half Order(6)", image: nil, price: 7.99, info: nil, options: ["Naked", "BBQ", "Buffalo", "Friggen' Hot"]),
                                MenuItem(name: "Full Order(12)", image: nil, price: 13.99, info: nil, options: ["Naked", "BBQ", "Buffalo", "Friggen Hot"])
    ])
    
    
    // MARK: - Favorites
    var favorites = MenuSection(name: "Award - Winning Favorites", image: nil, sectionInfo: nil,
                                items: [
                                    MenuItem(name: "Chopped Brisket Nachos", image: nil, price: 11.99, info: nil, options: nil),
                                    MenuItem(name: "Pulled Pork Nachos", image: nil, price: 10.99, info: nil, options: nil),
                                    MenuItem(name: "Chicken Nachos", image: nil, price: 10.99, info: nil, options: nil),
                                    MenuItem(name: "Brisket Tacos", image: nil, price: 9.99, info: nil, options: nil)
    ])
    
    
    // MARK: - Sides
    var sides = MenuSection(name: "Sides", image: nil, sectionInfo: nil,
                            items: [
                                MenuItem(name: "BBQ Baked Beans", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Garlic Mashers with Brown Gravy", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Red Beans & Rice", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Macaroni & Cheese", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Potato Salad", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Coleslaw", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Hush Puppies", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "French Fries", image: nil, price: 2.79, info: nil, options: nil),
                                MenuItem(name: "Side Salad", image: nil, price: 2.79, info: nil, options: nil),
                                //Premium Sides
                                MenuItem(name: "Fresh Fried Okra", image: nil, price: 3.79, info: nil, options: nil),
                                MenuItem(name: "Onion Rings", image: nil, price: 3.79, info: nil, options: nil),
                                MenuItem(name: "Fried Pickles", image: nil, price: 3.79, info: nil, options: nil),
                                MenuItem(name: "Sweet Potato Fries", image: nil, price: 3.79, info: nil, options: nil)
    ])
    
    
    
    // MARK: - Kid's Menu
    var kidsMenu = MenuSection(name: "Kid's Menu", image: nil, sectionInfo: [
        "1/4 lbs of your choice of meat or chicken nugget",
        "Each plate comes with Hush Puppies or Roll, a Side and a Drink"
    ],
                               items: [
                                MenuItem(name: "Kid's Plate", image: nil, price: 5.99, info: nil, options: ["Pulled Pork",
                                                                                                            "Brisket",
                                                                                                            "Boneless Chicken",
                                                                                                            "Sausage",
                                                                                                            "2 Ribs"])
    ])
    
    
    
    // MARK: - Drinks
    var drinks = MenuSection(name: "Drinks", image: nil, sectionInfo: ["Domestic beers, microbrews, and high-points available at select locations"],
                             items: [
                                MenuItem(name: "Soft Drinks", image: nil, price: 2.49, info: nil, options: nil),
                                MenuItem(name: "Fresh Brewed Tea", image: nil, price: 2.49, info: nil, options: nil),
                                MenuItem(name: "Bottled Water", image: nil, price: 1.49, info: nil, options: nil)
    ])
    
    
    
    // MARK: - Desserts
    var desserts = MenuSection(name: "Desserts", image: nil, sectionInfo: nil,
                               items: [
                                MenuItem(name: "Peach Cobbler", image: nil, price: 3.49, info: nil, options: ["Add ice cream $1"]),
                                MenuItem(name: "Banana Pudding", image: nil, price: 3.49, info: nil, options: nil)
    ])
    
    
    // TODO: Daily Specials
    
    // TODO: By the Pound
    
}
