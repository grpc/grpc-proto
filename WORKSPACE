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
    sha256 = "d6618d117698132dadf0f830b762315807dc424ba36ab9183f1f436008a2fdb6",
    strip_prefix = "protobuf-3.6.1.2",
    urls = ["https://github.com/google/protobuf/archive/v3.6.1.2.zip"],
)

http_archive(
    name = "com_google_googleapis",
    urls = [
        "https://github.com/googleapis/googleapis/archive/43a324913190da118e1c3c1a89ef6cfc47c5caf3.zip",
    ],
    sha256 = "d1860c5e806c0cf04d6d0806ab6f43f27c9d9a47cd76429f49f8a37750effccf",
    strip_prefix = "googleapis-43a324913190da118e1c3c1a89ef6cfc47c5caf3",
)
