APP = cots-tcp

# Add any other object files to this list below
#APP_OBJS = cots-tcp.o
SRCS=$(wildcard *.c)
APP_OBJS = $(SRCS:.c=.o)

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

clean:
	$(RM) $(APP) *.o *.elf
