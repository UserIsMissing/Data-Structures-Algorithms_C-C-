#!/bin/bash
RELATIVE_PATH="../cse-101-public-tests/pa3"
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
EXEC=FindComponents

echo ""
echo ""

rm -f *.o $EXEC

make

if [ ! -e $EXEC ] || [ ! -x $EXEC ]; then # exist and executable
  echo ""
  echo -e "${RED}Makefile probably doesn't correctly create Executable!!!${NC}"
  echo ""
else
  echo ""
  echo -e "${GREEN}Makefile probably correctly creates Executable!${NC}"
  echo ""
fi

make clean

echo ""
echo ""


if [ -e $EXEC ] || [ -e *.o ]; then
   echo -e "${RED}WARNING: Makefile didn't successfully clean all files${NC}"
fi

rm -f garbage

