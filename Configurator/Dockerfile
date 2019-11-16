FROM alpine:3.10
RUN apk add openssh-client sshpass

FROM alpine:3.10
COPY --from=0 ["/usr/bin/ssh*", "/usr/bin/scp", "/usr/bin/sftp", "/usr/bin/"]
COPY --from=0 ["/usr/lib/libedit*", "/usr/lib/libncursesw*", "/usr/lib/"]
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT [ "sh" ]
CMD [ "/start.sh" ]