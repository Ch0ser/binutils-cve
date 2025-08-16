FROM ubuntu:20.04

WORKDIR /workspace

# 安装最小依赖
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libc6-dev && \
    rm -rf /var/lib/apt/lists/*

# 拷贝构建好的 binutils
COPY binutils-2.26 /workspace/binutils-2.26
COPY poc /workspace/poc
COPY poc.sh /workspace
COPY test_case.sh /workspace
COPY image_status_check.sh /workspace

RUN chmod +x /workspace/*.sh

ENTRYPOINT ["/workspace/image_status_check.sh"]