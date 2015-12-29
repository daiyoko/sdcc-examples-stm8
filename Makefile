SDCC=sdcc
SDLD=sdld
OBJECTS=main.ihx

.PHONY: all clean flash

all: $(OBJECTS)

clean:
	rm -f $(OBJECTS)

flash: 
	stm8flash -c stlinkv2 -p stm8s105k4 -w main.ihx

%.ihx: %.c
	$(SDCC) -lstm8 -mstm8 --out-fmt-ihx $(CFLAGS) $(LDFLAGS) $<
