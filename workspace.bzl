load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():
    http_archive(
        name = "crosstool_ng_linux_arm_32v7",
        build_file = str(Label("//:crosstool_ng/linux_arm_32v7.BUILD")),
        sha256 = "f3f6bc5d11710bb1a63966c76430e7908ecf40227e6e76a93ae53f3ecd64a2d2",
        strip_prefix = "arm-unknown-linux-gnueabihf",
        url = "https://storage.googleapis.com/vertexai-depot/arm-unknown-linux-gnueabihf.tgz",
    )

    http_archive(
        name = "crosstool_ng_linux_arm_64v8",
        build_file = str(Label("//:crosstool_ng/linux_arm_64v8.BUILD")),
        sha256 = "36aaa12c33fdea55461b44e578776eccae6ab397653f2e94883551385c562dbb",
        strip_prefix = "aarch64-unknown-linux-gnu/",
        url = "http://cloud.ine.ru/s/rcXJJ5X4Q3qRfP3/download",
    )

    http_archive(
        name = "crosstool_ng_linux_x86_64",
        build_file = str(Label("//:crosstool_ng/linux_x86_64.BUILD")),
        sha256 = "d16603d1ad9814922e9978995ef9424140c8e0e064f7e75c4a93a03fdcfa8f5e",
        strip_prefix = "x86_64-unknown-linux-gnu",
        url = "https://storage.googleapis.com/vertexai-depot/toolchain/gcc-6.3.0/x86_64-unknown-linux-gnu-20181116.tgz",
    )
