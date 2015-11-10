SHELL=/bin/bash

default:text

text:
	for i in `find . -name \*.pdf`; do pdftotext $${i}; done

clean:
	for i in `find . -name \*.txt`; do rm $${i}; done

mrproper: clean
	for i in `find . -name \*.txt`; do rm $${i}; done
