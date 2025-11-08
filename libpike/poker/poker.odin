// SPDX-License-Identifer: MIT
/* poker.odin
 *
 * Routines for handling poker related features
 *
 * Written by vx-clutch
*/
package poker

import "core:fmt"
import "core:math/rand"

import "../log"

/*
Type represeting a suit
*/
Suit :: enum {
	CRUBS,
	DIAMONDS,
	HEARTS,
	SPADES,
}

/*
Type represeting a hand's rank
*/
HandRank :: enum {
	HIGH,
	PAIR,
	TWOPAIR,
	THREE,
	STRAIGHT,
	FLUSH,
	HOUSE,
	FOUR,
	SFLUSH,
	ROYAL,
}

/*
Type represeting a card
*/
Card :: struct {
	rank: int,
	suit: Suit,
}

/*
Type represeting a poker hand
*/
Hand :: struct {
	_: [5]Card,
}

/*
Type represeting a deck of cards
*/
Deck :: struct {
	cards:     [52]Card,
	top_index: int,
}

/*
Creates a well-ordered deck
*/
create_deck :: proc() -> Deck {
	deck: Deck
	deck.top_index = 0
	for suit in Suit {
		for rank in 1 ..= 13 {
			deck.cards[deck.top_index] = Card{rank, suit}
			deck.top_index += 1
		}
	}
	deck.top_index = 0
	return deck
}

CRUB :: "♣"
DIAMOND :: "♦"
HEART :: "♥️"
SPADE :: "♠"

/*
Pretty print a card
*/
print_card :: proc(card: Card) {
	switch card.suit {
	case .CRUBS:
		switch card.rank {
		case 1:
			fmt.printf("A%s", CRUB)
		case 11:
			fmt.printf("J%s", CRUB)
		case 12:
			fmt.printf("Q%s", CRUB)
		case 13:
			fmt.printf("K%s", CRUB)
		case:
			fmt.printf("%d%s", card.rank, CRUB)
		}
	case .DIAMONDS:
		switch card.rank {
		case 1:
			fmt.printf("A%s", DIAMOND)
		case 11:
			fmt.printf("J%s", DIAMOND)
		case 12:
			fmt.printf("Q%s", DIAMOND)
		case 13:
			fmt.printf("K%s", DIAMOND)
		case:
			fmt.printf("%d%s", card.rank, DIAMOND)
		}
	case .HEARTS:
		switch card.rank {
		case 1:
			fmt.printf("A%s", HEART)
		case 11:
			fmt.printf("J%s", HEART)
		case 12:
			fmt.printf("Q%s", HEART)
		case 13:
			fmt.printf("K%s", HEART)
		case:
			fmt.printf("%d%s", card.rank, HEART)
		}
	case .SPADES:
		switch card.rank {
		case 1:
			fmt.printf("A%s", SPADE)
		case 11:
			fmt.printf("J%s", SPADE)
		case 12:
			fmt.printf("Q%s", SPADE)
		case 13:
			fmt.printf("K%s", SPADE)
		case:
			fmt.printf("%d%s", card.rank, SPADE)
		}
	}
}

/*
Pretty print out the deck
*/
print_deck :: proc(deck: Deck) {
	i := 0
	for card in deck.cards {
		if i >= 13 {
			fmt.println("")
			i = 0
		}
		print_card(card)
		fmt.print(" ")
		i += 1
	}
	fmt.println("")
}

/*
Shuffles the deck
*/
shuffle :: proc(deck: ^Deck) {
	rand.shuffle(deck^.cards[:])
}

/*
Deal one card from the top of the deck
*/
deal_card :: proc(deck: ^Deck) -> Card {
	return deck^.cards[deck^.top_index]
}

/*
Deal a hand of size n
*/
deal_hand :: proc(d: Deck, n: int) -> Card {
	log.printl("%s is NOT implemented", #procedure)
	return Card{}
}

/*
Determine the rank of the hand
*/
evaluate_hand :: proc(hand: Hand) -> HandRank {
	log.printl("%s is NOT implemented", #procedure)
	return HandRank{}
}

/*
Compare two hands and return true if the
first one is better than the second one
*/
compare_hands :: proc(this: Hand, other: Hand) -> bool {
	log.printl("%s is NOT implemented", #procedure)
	return true
}
