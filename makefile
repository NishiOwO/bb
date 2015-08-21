# Generated automatically from Makefile.in by configure.
CC     = gcc
CFLAGS = -O -Wall -I/usr/pkg/include  -I/usr/X11R7/include
LIBS   = -lcurses -lm -laa -L/usr/pkg/lib   -L/usr/X11R7/lib -lX11
LFLAGS = -O

INCL = config.h 
 
SRCS = timers.c \
       unix.c \
       scene1.c \
       scene2.c \
       backconv.c \
       tex.c \
       scene9.c \
       textform.c \
       scene3.c \
       scene4.c \
       scene8.c \
       zeb.c \
       uncompfn.c \
       print.c \
       bb.c \
       scene5.c \
       scene7.c \
       minilzo.c \
       credits.c \
       zoom.c \
       formulas.c \
       julia.c \
       autopilo.c \
       ctrl87.c \
       fk1.c \
       fk2.c \
       fk3.c \
       fk4.c \
       hh1.c \
       hh2.c \
       hh3.c \
       hh4.c \
       kt1.c \
       kt2.c \
       kt3.c \
       kt4.c \
       ms1.c \
       ms2.c \
       ms3.c \
       ms4.c \
       image.c \
       credits2.c \
       messager.c

OBJS = $(SRCS:.c=.o)

#config.h:
#cp config.autoconf config.h

all:	bb bb_snd_server1


ctrl87.o:ctrl87.c
	$(CC) -c ctrl87.c

bb:  $(OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) -o bb $(OBJS) $(LIBS)

bb_snd_server1:
	@echo "-------------------------------------------------------------------------"
	@echo "In case you want to hear sound you need one of following platforms"
	@echo "Linux, FreeBSD, SUN, DEC Alpha, AIX, HP-UX, SGI"
	@echo "To enable sound (highly recomended) you need to compile sound server:"
	@echo " cd mikunix"
	@echo " #edit makefile for your system"
	@echo " make"
	@echo "-------------------------------------------------------------------------"
	@#cd mikunix; make; cd ..

clean:
	rm -f bb bb_snd_server
	rm -f core `find . -name '*.[oa]' -print`
	rm -f core `find . -name '*~' -print`
	rm -f core `find . -type f -name 'core' -print`

distclean:clean
	rm aconfig.h config.log config.status config.cache Makefile

#dep:
#	rm -f .depend
#	make .depend
#
#.depend:
#	echo '# Program dependencies' >.depend
#	gcc -I svgalib $(DEFINES) -MM $(patsubst %.o,%.c,$(OBJS)) >>.depend
#
#include .depend
