#!/bin/bash
# 检查可执行文件是否存在且可执行
if [[ -x /workspace/binutils-2.26/binutils/cxxfilt ]]; then
    echo "[A.S.E] image startup successfully"
else
    echo "[A.S.E] image startup failed"
fi