CROSSAS	= /opt/m68k/bin/m68k-coff-as
CROSSLD	= /opt/m68k/bin/m68k-coff-ld

OBJS	= entry.o menu.o header.o songlist.o vars.o
BIN	= core.bin

.PHONY: all
all:	$(BIN)
objs:	$(OBJS)

.PHONY: clean
clean:
	rm -f $(OBJS) $(BIN)


$(BIN): $(OBJS)
	$(CROSSLD) $(OBJS) --oformat binary -o $(BIN)


.SUFFIXES:
.SUFFIXES: .o

%.o: %.GNU_as.68k
	$(CROSSAS) $< -o $@

