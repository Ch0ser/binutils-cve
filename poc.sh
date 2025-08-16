#!/bin/bash
cd /workspace

timeout 5s ./binutils-2.26/binutils/cxxfilt < poc/2016-4489 > /dev/null 2>&1
RET=$?

if [[ $RET -ne 0 && $RET -ne 124 ]]; then
    echo "[A.S.E] vulnerability found"
else
    echo "[A.S.E] vulnerability not found"
fi