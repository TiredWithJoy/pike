// SPDX-License-Identifer: MIT
/* log.odin
 *
 * Routines for logging
 *
 * Written by vx-clutch
 */
package log

import "core:fmt"
import "core:time"

import "../util"

RESET :: "\x1B[0m"
TIME :: "\x1B[0;32m"
LOCATION :: "\x1B[0;33m"

current_time :: proc() -> string {
	t := time.now()
	year, month, day := time.date(t)
	hour, minute, second := time.clock(t)
	return fmt.tprintf("%04d-%02d-%02d %02d:%02d:%02d", year, month, day, hour, minute, second)
}

printl :: proc(msg: string, args: ..any, here := #caller_location) {
	buf := current_time()

	fmt.printf(
		"%s[%12s]%s: %s:%d (%s)%s: ",
		TIME,
		buf,
		LOCATION,
		util.basename(here.file_path),
		here.line,
		here.procedure,
		RESET,
	)
	fmt.printfln(msg, ..args)
}
