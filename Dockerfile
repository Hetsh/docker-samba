FROM hetsh/alpine:20260805-8
ARG LAST_UPGRADE="2026-10-11T21:51:40+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.10-r0 \
		samba-common-tools=4.23.10-r0 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
