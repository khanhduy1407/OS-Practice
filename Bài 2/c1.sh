#!/bin/bash

# Câu 1: Viết chương trình C in ra màn hình các số nguyên từ 0 đến 9

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "touch thuchanh.c && vi thuchanh.c" | pv -qL 10
touch thuchanh.c && vi thuchanh.c && sleep ${SLEEP_TIME}

echo "gcc -c thuchanh.c && gcc thuchanh.o -o thuchanh" | pv -qL 10
gcc -c thuchanh.c && gcc thuchanh.o -o thuchanh && sleep ${SLEEP_TIME}

echo "./thuchanh" | pv -qL 10
./thuchanh && sleep ${SLEEP_TIME}
