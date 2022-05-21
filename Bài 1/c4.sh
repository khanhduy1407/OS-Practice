#!/bin/bash

# Câu 4: Di chuyển file và thư mục

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "cd CTH/user2" | pv -qL 10
cd CTH/user2 && sleep ${SLEEP_TIME}

echo "mv test4.c ../user1" | pv -qL 10
mv test4.c ../user1 && sleep ${SLEEP_TIME}

echo "ls -l" | pv -qL 10
echo "==========USER2=========="
ls -l
echo "========================="
sleep ${SLEEP_TIME}

echo "ls -l ../user1" | pv -qL 10
echo "==========USER1=========="
ls -l ../user1
echo "========================="
sleep ${SLEEP_TIME}
