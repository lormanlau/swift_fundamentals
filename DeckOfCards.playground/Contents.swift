//: Playground - noun: a place where people can play

import UIKit

struct Card {
    var color: String
    var roll: Int = 0
    init(cardColor: String){
        color = cardColor
        if cardColor == "blue"{
            roll = Int(arc4random_uniform(2) + 1)
        } else if cardColor == "red" {
            roll = Int(arc4random_uniform(2) + 3)
        } else if cardColor == "green" {
            roll = Int(arc4random_uniform(3) + 4)
        }
    }
}

//var card1 = Card(cardColor: "blue")
//card1.roll
//var card2 = Card(cardColor: "red")
//card2.roll
//var card3 = Card(cardColor: "green")
//card3.roll

class Deck {
    var cards: [Card] = []
    init(){
        for i in 1...10 {
            var blue = Card(cardColor: "blue")
            cards.append(blue)
            var red = Card(cardColor: "red")
            cards.append(red)
            var green = Card(cardColor: "green")
            cards.append(green)
        }
    }
    func deal() -> Card{
        let card: Card = cards[cards.count-1]
        cards.remove(at: cards.count-1)
        return card
    }
    func isEmpty() -> Bool{
        if cards.count <= 0 {
            return false
        } else {
            return true
        }
    }
    func shuffle(){
        for i in 1...100 {
            var randNumberOne = Int(arc4random_uniform(UInt32(cards.count)))
            var randNumberTwo = Int(arc4random_uniform(UInt32(cards.count)))
            
            if randNumberOne != randNumberTwo {
                swap(&cards[randNumberOne], &cards[randNumberTwo])
            }
        }
    }
}

class Player {
    var name: String
    var hand: [Card] = []
    init(name: String){
        self.name = name
    }
    func draw(deck: Deck) -> Card{
        let card = deck.deal()
        hand.append(card)
        return card
    }
    func rollDice() -> Int{
        return Int(arc4random_uniform(6)+1)
    }
    func matchingCards(color: String, roll: Int) -> Int {
        var count: Int = 0
        for card in hand {
            if color == card.color && roll == card.roll {
                count += 1
            }
        }
        return count
    }
}


var deck1 = Deck()
var coco = Player(name: "coco")
coco.rollDice()
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)
coco.draw(deck: deck1)

print(coco.hand)
print(coco.matchingCards(color: "blue", roll: 2))



//print(deck1.cards)
//deck1.shuffle()
//print(deck1.cards)
//print(deck1.cards)
//print(deck1.deal())
//print(deck1.cards)
//print(deck1.isEmpty())

