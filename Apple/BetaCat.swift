//
//  BetaCat.swift
//  To Infinity and Beyond
//
//  Created by 宋歌 on 2023/3/16.
//
import Foundation
import SwiftUI
import Network
import MapKit
import MusicKit
//import swift.Algorithms
/*
 
    Supposed that We have a AI Robot named 'BetaCat', which:
 
    -   Played any board games like Meteor Song, a smart, natural, solid but aggressive player.
    -   Could the cat beat AlphaGo? Stockfish? or win other card games like TTA? Board games
    like Catan? How about Wargames?
    -   Talk is cheap, here comes the code.
 
 */
struct Card: Codable{
    
    var name: String;    // i.e. 'Bridge' or 'Tichu'
    var color: String;   // i.e. '♠️' or 'Green'
    var number: Int;    // 1-13 in Poker game, 1-N in other games.
    var wildCard: Int;  // Jokers in Poker game, 🐲 in Tichu games.
    
    // methods to be defined.
    
}

struct Table: Codable{
    
    var name: String;   // i.e. 'Office', 'Home' or 'GameShop'
    var type: String;   // i.e. 'Round', 'Board', 'Arena'
    var seats: Int; // How many players could sit in the table
    var material: String; // i.e. 'Wooden', 'Glass' or 'Pixel'
    var isVirtual: Bool;    // Virtual or Not
    var hasPhysics: Bool;   // a physical table can be crashed.
    
    // Bow to FangShen, You can find the 'table game' N*M grids here.
    
}

struct Signal: Codable{ // Signal is used to communication.
    
    var system: String; // i.e. 'YACL', 'Electron', 'Quantum'
    var usage: String; // i.e. 'FORCE PASS', 'FFT' etc
    var register: Int64; // 64bit code, for *pointer or FSA.
    var content: String; // 'SOS', 'MayDay!' or '2C'
    
    //TO BE CONTINUED.
}

struct Elements: Codable{ // 'ELEMENTS' in Geometry.
    
    var dimension: Int; // Hilbert Space (N)
    var set: String; // N for Natural, also I and Z
    var graph: [Int]; // {V, E, R} in Graph
    var isConsistent: Bool; // Gödel’s incompleteness theorems
    var isSolid: Bool; // But we come back to Topology
    var isDifferentiable : Bool; // And Philosophiæ Naturalis Principia Mathematica！
}

struct Astrology: Codable{ // Who are we? We shall we go?
    
    var name: String; // 'Chinese', 'Ancient' or 'Tarot'
    var birthday: Date; // Using MapKit to implement.
    var hometown: Locale; // Information for cultulre and linguitics
    var mechanics: String; // 'Classical', 'Relative' or 'Quantum'
    
    // Looking through the glasses.
}

struct Persona: Codable{ // And How we communicate with ourselves.
    
    var type: String; // Persona types, like 'ENFP'
    var factors: Int; // <16> Personalities, or big<5>
    var impact: [Double]; // assert len(impact) == factors
    var thinking: Bool; // thinking or believing;
    var decision: Float; // random walk(d);
    var isThou = true;  // Be yourself
    
    // You're your choices.
}

/*  Minimum State of a card game
 
 -  deck = color * number + wildCard.
 -  shuffle(deck), deal->playes@Table, followed #GameRule.
 -  !state@game == end:
    game(deck, table)
 
 #GameRule:
    -   def '>': Set(A) > Set(B)
    -   def 'X': A * N -> game score changed.
    -   def 'pass': halting.
    -   var round: Int;
    -   for i in round(N):
            for player in players:
                player.select['>', 'X', 'pass']
 */
