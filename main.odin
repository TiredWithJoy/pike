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

main :: proc() {
	log.printl("pike init")

	deck := casino.create_deck()

	casino.shuffle(&deck)

	casino.print_deck(deck)
}
