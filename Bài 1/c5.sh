#!/bin/bash

# Câu 5: Nén, giải nén

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "cd CTH/user2" | pv -qL 10
cd CTH/user2 && sleep ${SLEEP_TIME}

echo "tar -cvf test3.c.tar test3.c" | pv -qL 10
tar -cvf test3.c.tar test3.c && sleep ${SLEEP_TIME}

echo "rm test3.c" | pv -qL 10
rm test3.c && sleep ${SLEEP_TIME}

echo "tar -xvf test3.c.tar" | pv -qL 10
tar -xvf test3.c.tar && sleep ${SLEEP_TIME}
