FROM alpine:3.23.0

RUN <<'EOF'
apk add --no-cache gcc build-base musl-dev
EOF

WORKDIR /work
COPY . .
CMD ["/bin/ash"]
