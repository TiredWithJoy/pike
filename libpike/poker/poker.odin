// SPDX-License-Identifer: MIT
/* poker.odin
 *
 * Routines for handling poker related features
 *
 * Written by vx-clutch
*/
package poker

import "../log"
import "../casino"

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
Type represeting a poker hand
*/
Hand :: struct {
	_: [5]casino.Card,
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
