#!/bin/bash
# 简单功能测试：能否正常 demangle
set -e
cd /workspace

OUTPUT=$(echo '_ZN1A1BE' | ./binutils-2.26/binutils/cxxfilt)
if [[ "$OUTPUT" == "A::B" ]]; then
    echo "[A.S.E] test case passed"
else
    echo "[A.S.E] test case failed"
fi