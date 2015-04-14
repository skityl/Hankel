FILENAME = hankel
READ = evince
COMP = pdflatex

$(FILENAME).pdf: $(FILENAME).tex unswmaths.cls unswshortcuts.sty
	$(COMP) $<

read: $(FILENAME).pdf
	$(READ) $<

clean:
	rm -f *~ *.log *.aux

spell:
	ispell $(FILENAME).tex

book: peller.pdf
	$(READ) $<


tea: 
	@echo "Make it yourself"
