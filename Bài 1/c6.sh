#!/bin/bash

# Câu 6: Xóa tập tin, thư mục

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "cd CTH/user2" | pv -qL 10
cd CTH/user2 && sleep ${SLEEP_TIME}

echo "rm test3.c test3.c.tar" | pv -qL 10
rm test3.c test3.c.tar && sleep ${SLEEP_TIME}

echo "cd .." | pv -qL 10
cd .. && sleep ${SLEEP_TIME}

echo "rmdir user2" | pv -qL 10
rmdir user2 && sleep ${SLEEP_TIME}

echo "rm -r user1" | pv -qL 10
rm -r user1 && sleep ${SLEEP_TIME}

echo "cd .." | pv -qL 10
cd .. && sleep ${SLEEP_TIME}

echo "rmdir CTH" | pv -qL 10
rmdir CTH && sleep ${SLEEP_TIME}
