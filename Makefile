all:
	happy -gca Parmyhas.y
	alex -g Lexmyhas.x
	latex Docmyhas.tex
	dvips Docmyhas.dvi -o Docmyhas.ps
	ghc --make Testmyhas.hs -o Testmyhas
clean:
	 rm -f *.log *.aux *.hi *.o *.dvi Docmyhas.ps *.o
distclean: clean
	 rm -f Docmyhas.* Lexmyhas.* Parmyhas.* ParmyhasData.* Layoutmyhas.* Skelmyhas.* Printmyhas.* Testmyhas.* Absmyhas.* Testmyhas ErrM.* SharedString.* myhas.dtd XMLmyhas.* Makefile*
