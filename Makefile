.PHONY = clean

# Variables
CC = xelatex
SRC_DIR = src
BIN_DIR = output
SRC_CV = cv
BIN_CV = cv

# Main
main: $(BIN_CV).pdf

$(BIN_CV).pdf: $(SRC_DIR)/$(SRC_CV).tex
	mkdir -p $(BIN_DIR)/
	$(CC) -output-directory=$(BIN_DIR) $<

# Clean
clean:
	rm -rf $(BIN_DIR)/*.aux $(BIN_DIR)/*.log
