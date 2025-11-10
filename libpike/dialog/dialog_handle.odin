// SPDX-License-Identifer: MIT
/* dialog_handle.odin
 *
 * Routines for handling dialog related features
 *
 * Written by vx-clutch
*/
package dialog

import "core:math/rand"

import "../log"

/*
Type represeting all the characters
*/
Characters :: enum {
	GUY,
	BLACKJACK,
	SLOTS,
	VIDEOPOKER,
	POKER,
}

/*
Get random dialog string based on character
*/
get_random :: proc(character: Characters) -> string {
	msg := ""
	switch character {
	case .GUY:
		msg = rand.choice(guy[:])
	case .BLACKJACK:
		msg = rand.choice(blackjack[:])
	case .SLOTS:
		msg = rand.choice(slots[:])
	case .VIDEOPOKER:
		msg = rand.choice(videopoker[:])
	case .POKER:
		msg = rand.choice(poker[:])
	}
	log.printl(msg)
	return msg
}
