FROM hetsh/alpine:20260127-3
ARG LAST_UPGRADE="2026-03-09T21:45:54+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.5-r0 \
		samba-common-tools=4.23.5-r0 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
