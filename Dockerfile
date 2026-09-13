FROM hetsh/alpine:20260805-4
ARG LAST_UPGRADE="2026-09-13T07:00:29+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.10-r0 \
		samba-common-tools=4.23.10-r0 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
