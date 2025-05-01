.PHONY = clean

# Variables
CC = xelatex
SRC_DIR = src
BIN_DIR = output
SRC_CV = cv
SRC_CVLONG = cv-long

# cv
cv: cv.pdf

cv.pdf: $(SRC_DIR)/$(SRC_CV).tex
	$(CC) -output-directory=$(BIN_DIR) $<

# Clean
clean:
	rm -rf $(BIN_DIR)/*.aux $(BIN_DIR)/*.log
