// SPDX-License-Identifer: MIT
/* poker.odin
 *
 * Routines for handling poker related features
 *
 * Written by TiredWithJoy
*/
package blackjack

import "../log"
import "../casino"

/*
Type represeting a poker hand
*/
Hand :: struct {
	_: [11]casino.Card,
}

/*
Determine the rank of the hand
*/
evaluate_hand :: proc(hand: Hand) -> int  {
    total:int 
    aces: [dynamic]int
    for x, i in hand {
        total = total + x.rank
        if x.rank = 1 {
            total = total + 11
            append(&aces, i)
        }
        if total > 21 {
            if len(aces) > 0 {
                total = total - 10
                pop(&aces)
            }
        }
    }
	return total
}

/*
Compare two hands and return true if the
first one is better than the second one
*/
compare_hands :: proc(player: Hand, other: Hand) -> casino.Outcome {
	if evaluate_hand(player) > evaluate_hand(other) {
	    return .WIN
    }else if evaluate_hand(player) < evaluate_hand(other) {
	    return .LOSE
    } else {
        return .TIE
    }
}

