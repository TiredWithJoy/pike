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
import rl "vendor:raylib"

import "libpike/log"
import "libpike/casino"
import "libpike/dialog"

TARGET_FPS :: 60

WINDOW_NAME :: "Pike"
WINDOW_WIDTH :: 800
WINDOW_HEIGHT :: 600

main :: proc() {
	log.printl("pike init")

	log.printl("start raylib")

	rl.SetTraceLogLevel(ODIN_DEBUG ? .ALL : .NONE)
	rl.SetConfigFlags({ .WINDOW_RESIZABLE, .VSYNC_HINT })
	rl.SetTargetFPS(TARGET_FPS)

	rl.InitWindow(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_NAME)

	for !rl.WindowShouldClose() {
		update()

		rl.BeginDrawing()
		rl.ClearBackground({160, 200, 255, 255})
			draw()
			rl.DrawFPS(10, 10)
		rl.EndDrawing()
	}

	log.printl("exiting")
	rl.CloseWindow()
	log.printl("done")
}

setup_game :: proc() {
	// very complicated setup code
}

draw :: proc() {
	// very VERY mega-duper simple code
}

update :: proc() {
	// very complex set of update instructions
}
