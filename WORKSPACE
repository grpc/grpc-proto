# Copyright 2018 The gRPC Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# proto_library, cc_proto_library, and java_proto_library rules implicitly
# depend on @com_google_protobuf for protoc and proto runtimes.
# This statement defines the @com_google_protobuf repo.
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_protobuf",
    sha256 = "33cba8b89be6c81b1461f1c438424f7a1aa4e31998dbe9ed6f8319583daac8c7",
    strip_prefix = "protobuf-3.10.0",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.10.0.zip"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# Unfortunately the googleapis repo doesn't seem to be doing regular releases.
# Their last and only one was on Sep 1, 2016. So, we need to pin to a
# particular git commit, and this one was made on Feb 6, 2020.
GOOGLEAPIS_GIT_SHA = "052b274138fce2be80f97b6dcb83ab343c7c8812"

GOOGLEAPIS_SHA = "e31dc9f889bf53e001998d16385881b507c8cc1455bbe5618b16f0f8cb0fd46f"

http_archive(
    name = "com_google_googleapis",
    sha256 = GOOGLEAPIS_SHA,
    strip_prefix = "googleapis-" + GOOGLEAPIS_GIT_SHA,
    urls = ["https://github.com/googleapis/googleapis/archive/" + GOOGLEAPIS_GIT_SHA + ".tar.gz"],
)

load("@com_google_googleapis//:repository_rules.bzl", "switched_rules_by_language")

switched_rules_by_language(
    name = "com_google_googleapis_imports",
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "a82a352bffae6bee4e95f68a8d80a70e87f42c4741e6a448bec11998fcc82329",
    urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.18.5/rules_go-0.18.5.tar.gz"],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "727fae92372f0b6e68f969e2b200add7a87e1395055a72d6363cc82942f93000",
    strip_prefix = "grpc-1.30.0-pre1",
    urls = ["https://github.com/grpc/grpc/archive/v1.30.0-pre1.tar.gz"],
)

http_archive(
    name = "envoy",
    sha256 = "1b223ee37452d6143d316ddb1a83c27c13daff41dcbdf37899d597a396a6295e",
    strip_prefix = "envoy-1.14.2",
    urls = ["https://github.com/envoyproxy/envoy/archive/v1.14.2.tar.gz"],
)

load("@envoy//bazel:api_binding.bzl", "envoy_api_binding")

envoy_api_binding()

load("@envoy//bazel:api_repositories.bzl", "envoy_api_dependencies")

envoy_api_dependencies()
