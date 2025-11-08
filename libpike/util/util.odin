package util

import "core:strings"

basename :: proc(path: string) -> string {
	idx := strings.last_index_byte(path, '/')
	if idx < 0 {
		return path
	}
	return path[idx+1:]
}
