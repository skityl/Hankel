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
	

class_update:
	cd ..;
	git submodule update --init --recursive;
	# cd -;
	cp -r ../UNSW_Latex/artwork artwork;
	cp -r ../UNSW_Latex/unswmaths.cls unswmaths.cls
	cp -r ../UNSW_Latex/unswshortcuts.sty unswshortcuts.sty	

	
tea: 
	@echo "Make it yourself"