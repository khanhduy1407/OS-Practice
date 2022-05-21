#!/bin/bash

# Câu 1: Tạo cây thư mục

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "mkdir CTH" | pv -qL 10
mkdir CTH && sleep ${SLEEP_TIME}

echo "cd CTH" | pv -qL 10
cd CTH && sleep ${SLEEP_TIME}

echo "mkdir user1" | pv -qL 10
mkdir user1 && sleep ${SLEEP_TIME}

echo "mkdir user2" | pv -qL 10
mkdir user2 && sleep ${SLEEP_TIME}
