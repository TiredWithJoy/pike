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

import rl "vendor:raylib"

import "libpike/log"
import "libpike/casino"
import "libpike/dialog"

draw :: proc() {
	log.printl("draw frame")
	rl.BeginDrawing()

	rl.ClearBackground({160, 200, 255, 255})

	rl.EndDrawing()
}

update :: proc() {
	log.printl("update frame")
}

main :: proc() {
	log.printl("pike init")

	log.printl("start raylib")

	rl.InitWindow(1024, 512, "pike")

	for !rl.WindowShouldClose() {
		draw()
		update()
	}

	log.printl("exiting")
	rl.CloseWindow()
}
