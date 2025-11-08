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

import "core:fmt"

import "libpike/log"
import "libpike/poker"

main :: proc() {
	log.printl("pike init")

	deck := poker.create_deck()

	// poker.shuffle(&deck)

	poker.print_deck(deck)
}
