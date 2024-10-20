#-------------------------------------------------------
#compilation order
#-------------------------------------------------------
pyacc		:					\
		   yaccsem.o
		   fpc $@

yaccsem.o	:					\
		   yaccbase.o				\
		   yaccclos.o				\
		   yacclr0.o				\
		   yacclook.o				\
		   yacctabl.o


yacctabl.o	:					\
		   yaccbase.o

lexdfa.o	:					\
		   lexbase.o				\
		   lextable.o				\

lextable.o						\
lexmsgs.o						\
		:  					\
		   lexbase.o				\


%.o		:  %.pas
		   fpc $<

#-------------------------------------------------------
#git management

#pushing commit to github
github	:	
		git push github

#committing modification
commit	:	clean
		git add .
		git commit -a

#-------------------------------------------------------
clean	:
		@ rm -fr *.o *.ppu pyacc
#-------------------------------------------------------
