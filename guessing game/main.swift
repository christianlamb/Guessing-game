//
//  main.swift
//  guessing game
//
//  Created by Christian Lamb on 8/23/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation

var playingGame = true


print("Welcome to The guessing game!!!")


repeat {
    print("How many guesses do you want.")
    var stillPlaying = "Y"
    var guessesLeft = Int(readLine()!)
    while guessesLeft == nil {
        print("plese chose a number")
    }
    
    let randomNumber = Int(arc4random_uniform(101))
    
    
    
    repeat{
        
        print("Please guess a number between 1 - 100.")
        var userGuess = Int(readLine()!)
        
        while userGuess == nil {
            print("Not a number betweeen 1 - 100 ")
            print("Please guess a number between 0 - 100.")
            userGuess = Int(readLine()!)
        }
        if guessesLeft == 0 {
            print(" game over ")
        }
        
        if userGuess! > randomNumber && userGuess != randomNumber {
            print("The Number is lower.")
        }
        if userGuess! < randomNumber && userGuess != randomNumber {
            print("The number is higher")
        }
        if randomNumber == userGuess{
            print("You guessed the number.")
            guessesLeft = 0
        }
        if userGuess != randomNumber{
            guessesLeft! -= 1
            print("Guesses left \(String(describing: guessesLeft!))")
        }
        if guessesLeft == 0 && userGuess != randomNumber{
            print("You lose")
        }
        
        if userGuess == randomNumber || guessesLeft == 0 {
            print("The correct answer was \(randomNumber)")
            print("would you like to play agian Y/N.")
            stillPlaying  = readLine()!.uppercased()
        }
        if stillPlaying == "N"{
            playingGame = false
        }
        
        
    }while guessesLeft! > 0
    
}while playingGame == true

print("Thanks for playing.")


