.PHONY = clean

# Variables
CC = xelatex
SRC_DIR = src
BIN_DIR = pdf
SRC_CV = cv
SRC_CVLONG = cv-long
SRC_COVERLETTER = coverletter

# cv
cv: cv.pdf

cv.pdf: $(SRC_DIR)/$(SRC_CV).tex
	$(CC) -output-directory=$(BIN_DIR) $<
	
# cv-long
cv-long: cv-long.pdf

cv-long.pdf: $(SRC_DIR)/$(SRC_CVLONG).tex
	$(CC) -output-directory=$(BIN_DIR) $<

# coverletter
coverletter: coverletter.pdf

coverletter.pdf: $(SRC_DIR)/$(SRC_COVERLETTER).tex
	$(CC) -output-directory=$(BIN_DIR) $<

# Clean
clean:
	rm -rf $(BIN_DIR)/*.aux $(BIN_DIR)/*.log
