//: Playground - noun: a place where people can play

import UIKit

struct Card {
    let color: String
    var roll: Int = 0
    init(color: String){
        self.color = color
        if color == "blue"{
            self.roll = Int(arc4random_uniform(UInt32(2)))+1
        } else if color == "red" {
            self.roll = Int(arc4random_uniform(UInt32(2)))+3
        } else if color == "green" {
            self.roll = Int(arc4random_uniform(UInt32(3)))+4
        }
    }
}

class Deck {
    var cards: [Card] = []
    init(){
        for blue in 1...10{
            self.cards.append(Card(color: "blue"))
        }
        for red in 1...10{
            self.cards.append(Card(color: "red"))
        }
        for green in 1...10{
            self.cards.append(Card(color: "green"))
        }
    }
    
    func isEmpty() -> Bool{
        if cards.count == 0 {
            return true
        }
        return false
    }
    
    func deal() -> Card{
        if let card: Card = cards.remove(at: 0){
            return card
        }
    }
    
    func shuffle() -> [Card]{
        for times in 1...100{
            let card1:Int = Int(arc4random_uniform(UInt32(30)))
            let card2:Int = Int(arc4random_uniform(UInt32(30)))
            let temp = cards[card1]
            cards[card1] = cards[card2]
            cards[card2] = temp
        }
        return cards
    }
}

class Player {
    var name: String
    var hand: [Card] = []
    init(name: String){
        self.name = name
    }
    
    func draw(card: Card) -> Card{
        self.hand.append(card)
        return card
    }
    func rollDice() -> Int{
        return Int(arc4random_uniform(UInt32(6))+1)
    }
    func matchingCards(color: String, roll: Int) -> Int{
        var count: Int = 0
        for card in hand {
            if card.color == color && card.roll == roll {
                count += 1
            }
        }
        return count
    }
}

var myDeck = Deck()
myDeck.shuffle()
var lorman = Player(name: "Lorman")
lorman.draw(card: myDeck.deal())
lorman.draw(card: myDeck.deal())
lorman.draw(card: myDeck.deal())
lorman.draw(card: myDeck.deal())
lorman.draw(card: myDeck.deal())
print(lorman.hand)
print(lorman.rollDice())