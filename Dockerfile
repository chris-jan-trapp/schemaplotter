FROM schemacrawler/schemacrawler


ENV JDBC_URL=localhost
ENV USR=usr
ENV PASSWORD=none
ENV LEVEL=maximum

USER schcrwlr
WORKDIR /home/schcrwlr

ENTRYPOINT /opt/schemacrawler/schemacrawler.sh --command=schema --info-level=${LEVEL} --url=${JDBC_URL} --user=${USR} --password=${PASSWORD} --output-format=pdf -o=database-diagram.pdf