ID3=/home/sasl/shared/main3/env/tools
CC=g++
CFLAGS=-Wall
LDLIBS=${CLIBS:.cpp=.o}
CLIBS=convert.cpp list.cpp  genre.cpp id3v2.cpp
INSTALLDIR=${PWD}/../.. #facilite l'ecriture du makefile pour install et distclean
#LD_LIBRARY_PATH=${ID3}/lib # <- permet de modifier la variable global

all: id3v2

%.o: %.cpp
	${CC} -I ${ID3}/include -DVERSION="\"${VERSION}\"" -c -o $@ $<

id3v2: ${LDLIBS} 
	${CC} -L${ID3}/lib ${CFLAGS} -o $@ ${LDLIBS} -lid3 -lz

clean: 
	rm -f ${LDLIBS} id3v2

install: id3v2
	mkdir -p ${INSTALLDIR}/bin
	cp id3v2 ${INSTALLDIR}/bin
	mkdir -p ${INSTALLDIR}/man/man1
	nroff -man ../id3v2.1 > ${INSTALLDIR}/man/man1/id3v2.1
	
distclean: 
	rm -f ${LDLIBS} id3v2
	rm -f ${INSTALLDIR}/man/man1/id3v2.1
	rm -f ${INSTALLDIR}/bin/id3v2

#Pour rendre l'executable executable n'importe ou il suffit d'ajouter son path a la variable globale path. ex : export PATH=$PATH:./home/sasl/___/bin/id3v2
