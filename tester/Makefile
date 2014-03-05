CROSSAS	= /opt/m68k/bin/m68k-coff-as
CROSSLD	= /opt/m68k/bin/m68k-coff-ld

OBJS	= \
	core/entry.o \
	core/menu.o \
	core/header.o \
	core/songlist.o \
	core/vars.o \
	input/joypad.o \
	sound/bgms.o \
	sound/echo.o \
	sound/esf.o \
	sound/list.o \
	sound/sfxs.o \
	video/bg.o \
	video/text.o \
	video/vsync.o

BIN	= tester.bin

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

