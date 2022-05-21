#!/bin/bash

# Câu 2: Tạo tập tin

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "cd CTH/user1" | pv -qL 10
cd CTH/user1 && sleep ${SLEEP_TIME}

echo "touch test1.c" | pv -qL 10
touch test1.c && sleep ${SLEEP_TIME}

echo "touch test2.c" | pv -qL 10
touch test2.c && sleep ${SLEEP_TIME}

echo "cd ../user2" | pv -qL 10
cd ../user2 && sleep ${SLEEP_TIME}

echo "touch test3.c" | pv -qL 10
touch test3.c && sleep ${SLEEP_TIME}

echo "touch test4.c" | pv -qL 10
touch test4.c && sleep ${SLEEP_TIME}
