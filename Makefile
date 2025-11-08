EXT :=
ifeq ($(OS),Windows_NT)
	EXT = .exe
endif

BIN := pike$(EXT)

$(BIN):
	@echo "  ODIN"
	@odin build . -out:$(BIN)

clean:
	@echo "  CLEAN"
	@$(RM) $(BIN)
