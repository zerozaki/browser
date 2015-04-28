CC=cc
SRCDIR=src
FLAGS=-Wall -Werror -std=c99 -c -g
LIBS=
SRC=$(wildcard $(SRCDIR)/*.c)
OBJS=$(notdir $(SRC:.c=.o))
OUT=browser

all: $(OUT)

$(OUT): $(OBJS)
	$(CC) $(OBJS) -o $(OUT) $(LIBS)

%.o: $(SRCDIR)/%.c
	$(CC) $(FLAGS) $<

clean:
	rm -f $(OUT) $(OBJS)
