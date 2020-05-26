# grpc-proto
This repository contains the canonical versions of common protocol definitions
for peripheral services around gRPC such as health checking and load balancing.

## Usage

For Bazel users, it can be included directly as an `http_repository`.

Non-Bazel users are expected to copy the proto files from this repo as needed.
However, those copies should not be modified; they should be byte-identical with
the version of grpc-proto that was copied from. Changes should be made to proto
files in this repo before being recopied elsewhere. This prevents forking the
proto and makes clear the "latest version" of the proto.

Projects that copy the protos should defend against repo-specific modifications.
They should use a script to copy that overwrites any such changes, or have
sanity tests that would fail if a proto was no longer byte-identical.

## Directory Structure

The directory structure should match the protocol package. For example,
`health.proto` in package `grpc.health.v1` will be placed in
`grpc/health/v1/health.proto`.
