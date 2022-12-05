OUT = bin/main
CC = arch -x86_64 g++
ODIR = build
SDIR = src
CFLAGS = -F /Library/Frameworks
LDFLAGS = -framework SFML -framework sfml-graphics -framework sfml-window -framework sfml-system

_OBJS = main.o
OBJS = $(patsubst %,$(ODIR)/%,$(_OBJS))

$(ODIR)/%.o: $(SDIR)/%.cpp | $(ODIR)
	$(CC) $(CFLAGS) -o $@ -c $^

$(OUT): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

$(ODIR):
	mkdir -p $@

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(OUT)