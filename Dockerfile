FROM hetsh/alpine:20260127-7
ARG LAST_UPGRADE="2026-05-03T07:17:43+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.5-r1 \
		samba-common-tools=4.23.5-r1 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
