FROM hetsh/alpine:20260127-11
ARG LAST_UPGRADE="2026-08-01T12:22:36+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.8-r0 \
		samba-common-tools=4.23.8-r0 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
