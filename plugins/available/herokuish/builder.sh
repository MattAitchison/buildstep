
readonly herokuish_image="${HEROKUISH_IMAGE:-gliderlabs/herokuish:latest}"

herokuish:detect-build() {
  true
}

herokuish:build-image() {
  docker run -v /tmp/src:/tmp/app $herokuish_image \
    /bin/sh -c "herokuish buildpack install && /build"

}
