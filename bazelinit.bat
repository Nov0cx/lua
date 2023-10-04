@echo off
set /p prjName=Enter the project name:
echo workspace(name = "%prjName%") > WORKSPACE.bazel
echo load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive") > WORKSPACE.bazel


set /p bzlVer=Enter the bazel version:
echo %bzlVer% > .bazelversion

type NUL > .bazelrc
echo %prjName% > README.md
echo Using bazel version: %bzlVer% > README.md
echo Download bazel [here](https://bazel.build/install/bazelisk) > README.md

echo Finished setting up Bazel project