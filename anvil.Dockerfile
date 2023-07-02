# syntax=docker/dockerfile:1.4

FROM ghcr.io/foundry-rs/foundry as build-environment
FROM alpine:3.18 as anvil-client
COPY --from=build-environment /usr/local/bin/anvil /usr/local/bin/anvil
ENTRYPOINT ["/bin/sh", "-c"]


LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Foundery-anvil" \
      org.label-schema.description="anvil" \
      org.label-schema.url="https://book.getfoundry.sh/anvil/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/foundry-rs/foundry.git" \
      org.label-schema.vendor="Foundry-rs" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="0.1.0"
