// SPDX-License-Identifer: MIT
/* casino.odin
 *
 * Routines for handling card games
 *
 * Written by vx-clutch and TiredWithJoy
*/
package casino

import "core:fmt"
import "core:math/rand"

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
Type representing hand comparison
*/
Hand :: enum {
	WIN,
	LOSE,
	TIE,
}

/*
Type represeting a card
*/
Card :: struct {
	rank: int,
	suit: Suit,
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

