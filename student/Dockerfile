FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends swi-prolog-nox ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY student/student-env-info /usr/local/bin/student-env-info
COPY student/student-check /usr/local/bin/student-check
RUN chmod +x /usr/local/bin/student-env-info /usr/local/bin/student-check

WORKDIR /course
CMD ["student-check"]
