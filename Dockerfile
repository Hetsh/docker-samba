FROM hetsh/alpine:20260127-6
ARG LAST_UPGRADE="2026-04-13T15:31:17+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.5-r1 \
		samba-common-tools=4.23.5-r1 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
