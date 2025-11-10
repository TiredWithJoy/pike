// SPDX-License-Identifer: MIT
/*
 * main.odin
 *
 * pike pre-alpha
 *
 * Written by TiredWithJoy
 * Written by vx-clutch
 *
 * This file contains the main driving
 * routine, and some game code.
 */

package main


import "libpike/log"
import "libpike/casino"
import "libpike/dialog"

main :: proc() {
	log.printl("pike init")

	deck := casino.create_deck()

	casino.shuffle(&deck)

	casino.print_deck(deck)

	log.printl("=== guy ===")
	dialog.get_random(.GUY)
	dialog.get_random(.GUY)
	log.printl("=== blackjack ===")
	dialog.get_random(.BLACKJACK)
	dialog.get_random(.BLACKJACK)
	log.printl("=== slots ===")
	dialog.get_random(.SLOTS)
	dialog.get_random(.SLOTS)
	log.printl("=== video poker ===")
	dialog.get_random(.VIDEOPOKER)
	dialog.get_random(.VIDEOPOKER)
	log.printl("=== poker ===")
	dialog.get_random(.POKER)
	dialog.get_random(.POKER)
}
