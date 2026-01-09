# grpc-proto
This repository contains the canonical versions of common protocol definitions
for peripheral services around gRPC such as health checking and load balancing.

## Usage

### For Bazel Users (Bzlmod - Recommended)

**Security Notice:** This repository now uses Bazel's MODULE.bazel system for secure dependency management. This eliminates supply chain vulnerabilities from unpinned git dependencies.

Add to your `MODULE.bazel`:
```starlark
bazel_dep(name = "grpc-proto", version = "0.0.0")
```

Or use as an http_archive with MODULE.bazel enabled:
```starlark
# In your MODULE.bazel or WORKSPACE
bazel_dep(name = "grpc-proto")
git_override(
    module_name = "grpc-proto",
    remote = "https://github.com/grpc/grpc-proto.git",
    commit = "<commit-sha>",
)
```

### Legacy WORKSPACE (Deprecated)

The WORKSPACE file is deprecated due to security vulnerabilities in its dependency management approach. Please migrate to MODULE.bazel.

### Non-Bazel Users

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

## Security

This repository uses cryptographically verified dependencies through Bazel Central Registry.
All dependency versions are pinned and verified to prevent supply chain attacks.
