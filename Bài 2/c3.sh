#!/bin/bash

# Câu 3: Viết chương trình cộng và nhân 2 số nguyên sử dụng thư viện liên kết động

SLEEP_TIME="1"
sleep ${SLEEP_TIME}

echo "gcc -c -fpic cong.c nhan.c" | pv -qL 10
gcc -c -fpic cong.c nhan.c && sleep ${SLEEP_TIME}

echo "gcc -shared cong.o nhan.o -o libfoo.so" | pv -qL 10
gcc -shared cong.o nhan.o -o libfoo.so && sleep ${SLEEP_TIME}

echo "gcc program.c -o program -L. -lfoo" | pv -qL 10
gcc program.c -o program -L. -lfoo && sleep ${SLEEP_TIME}

echo "LD_LIBRARY_PATH=.:" | pv -qL 10
LD_LIBRARY_PATH=.: && sleep ${SLEEP_TIME}

echo "export LD_LIBRARY_PATH" | pv -qL 10
export LD_LIBRARY_PATH && sleep ${SLEEP_TIME}

echo "./program" | pv -qL 10
./program && sleep ${SLEEP_TIME}
