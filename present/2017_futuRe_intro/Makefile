TITLE = 2017_futuRe_intro

.PHONY : all
all: deck web clean

deck:
	Rscript -e "rmarkdown::render('$(TITLE).Rmd')"

web:
	rsync -a --exclude='.git/' --chmod=go+r "$(pwd -P)" \
	  nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE)/

clean:
	rm *.html

