load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _http_archives_extension_impl(ctx):
    http_archive(
        name = "com_google_googleapis",
        urls = [
            "https://github.com/googleapis/googleapis/archive/052b274138fce2be80f97b6dcb83ab343c7c8812.tar.gz",
        ],
        sha256 = "e31dc9f889bf53e001998d16385881b507c8cc1455bbe5618b16f0f8cb0fd46f",
        strip_prefix = "googleapis-052b274138fce2be80f97b6dcb83ab343c7c8812",
    )

http_archives_extension = module_extension(implementation = _http_archives_extension_impl)
