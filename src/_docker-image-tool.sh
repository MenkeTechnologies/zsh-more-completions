#compdef docker-image-tool.sh

local arguments

arguments=(
  '-f[dockerfile to build for JVM based Jobs. By default builds the Dockerfile shipped with Spark.]'
  '-p[dockerfile to build for PySpark Jobs. Builds Python dependencies and ships with Spark.]'
  '-R[dockerfile to build for SparkR Jobs. Builds R dependencies and ships with Spark.]'
  '-r[repository address.]'
  '-t[tag to apply to the built image, or to identify the image to be pushed.]'
  '-m[use minikubes Docker daemon.]'
  '-n[build docker image with --no-cache]'
  '-b[build arg to build or push the image. For multiple build args, this option needs to]'
  '*:filename:_files'
)

_arguments -s $arguments
