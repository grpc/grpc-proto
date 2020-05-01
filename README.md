# grpc-proto
This repository contains the canonical common protocol definitions for
peripheral services around gRPC such as health checking, load balancing etc..

## Usage

For Bazel users, it can included directly as an http_repository.

For others it is expected the proto files will be copied to other gRPC
repositories as needed (e.g., `grpc/grpc`, `grpc/grpc-go`, etc.). However, those
copies may not be modified directly; they should be byte-identical with the
version of grpc-proto that was copied from. All changes should be merged in
grpc-proto before appearing in another repository. This prevents forking the
proto and makes clear the "latest version" of the proto.

Projects that copy the protos should defend against repo-specific modifications.
They should use a script to copy that overwrites any such changes, or have
sanity tests that would fail if a proto was no longer byte-identical.

## Directory Structure

The directory structure should match the protocol package. For example,
`health.proto` in package `grpc.health.v1` will be placed in
`grpc/health/v1/health.proto`.
