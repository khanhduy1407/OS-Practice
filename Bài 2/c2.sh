#!/bin/bash

# Câu 2: Viết chương trình cộng và nhân 2 số nguyên sử dụng thư viện liên kết tĩnh

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "touch cong.c && vi cong.c" | pv -qL 10
touch cong.c && vi cong.c && sleep ${SLEEP_TIME}

echo "touch nhan.c && vi nhan.c" | pv -qL 10
touch nhan.c && vi nhan.c && sleep ${SLEEP_TIME}

echo "touch program.c && vi program.c" | pv -qL 10
touch program.c && vi program.c && sleep ${SLEEP_TIME}

echo "gcc -c cong.c nhan.c" | pv -qL 10
gcc -c cong.c nhan.c && sleep ${SLEEP_TIME}

echo "ar cvr libfoo.a cong.o nhan.o" | pv -qL 10
ar cvr libfoo.a cong.o nhan.o && sleep ${SLEEP_TIME}

echo "gcc program.c -o program -L. -lfoo" | pv -qL 10
gcc program.c -o program -L. -lfoo && sleep ${SLEEP_TIME}

echo "./program" | pv -qL 10
./program && sleep ${SLEEP_TIME}
