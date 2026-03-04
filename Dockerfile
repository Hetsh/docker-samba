FROM hetsh/alpine:20260127-2
ARG LAST_UPGRADE="2026-02-15T15:53:33+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		samba-server=4.23.5-r0 \
		samba-common-tools=4.23.5-r0 && \
	addgroup --gid "873" "share"

ENTRYPOINT ["smbd", "--interactive"]
