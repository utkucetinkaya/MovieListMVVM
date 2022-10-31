//
//  NetworkConstant.swift
//  MovieListMVVM
//
//  Created by Utku Çetinkaya on 31.10.2022.
//
// https://api.themoviedb.org/3/trending/all/day?api_key=7c5cb5b002a2575bb2e3e5c345dbae35
import Foundation

class NetworkConstants {
   
    public static var shared: NetworkConstants = NetworkConstants()
    
    private init() {
        // singletone
    }
    
    public var apiKey: String {
        get {
            return "7c5cb5b002a2575bb2e3e5c345dbae35"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get{
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
