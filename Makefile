.PHONY: coverletter

CC = xelatex
COVERLETTER_DIR = coverletter
RESUME_DIR = coverletter/resume
CV_DIR = coverletter/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

coverletter: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(COVERLETTER_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(COVERLETTER_DIR) $<

cv.pdf: $(COVERLETTER_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(COVERLETTER_DIR) $<

coverletter.pdf: $(COVERLETTER_DIR)/coverletter.tex
	$(CC) -output-directory=$(COVERLETTER_DIR) $<

clean:
	rm -rf $(COVERLETTER_DIR)/*.pdf
