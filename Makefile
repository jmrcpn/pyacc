#-------------------------------------------------------
#compilation order
#-------------------------------------------------------
yaccsem.o	:					\
		   yaccbase.o				\
		   yaccclos.o				\
		   yacclr0.o				\
		   yacclook.o				\
		   yacctabl.o				\

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
clean	:
		@ rm -fr *.o *.ppu
