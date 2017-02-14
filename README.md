# grpc-proto
This repository contains common protocol definitions for peripheral services
around gRPC such as health checking, load balancing etc..

## Planned Usage

For ease of development, proto files will still be copied to the other gRPC
repositories (e.g., `grpc/grpc`, `grpc/grpc-go`, etc.). Sanity tests will be
added to verify that common proto files match the "ground truth" files contained
here.

## Directory Structure

The directory structure should match the protocol package. For example,
`health.proto` in package `grpc.health.v1` will be placed in
`grpc/health/v1/health.proto`.
