EXEC = calcul
OBJS = calcul.o sum.o prod.o
%.o: %.c
	gcc -c $< -o $@
all: $(EXEC)
$(EXEC): $(OBJS)
	gcc $(OBJS) -o calcul
calcul.o: sum.h prod.h
clean: 
	rm -f *.o $(EXEC)