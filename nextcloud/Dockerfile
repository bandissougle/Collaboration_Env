FROM nextcloud

# -----------------------------------------------------------------------------
# Configuration du proxy pour fonctionnement à l'IFI
# -----------------------------------------------------------------------------

# changement des repos poiur que ce soit l'in2p3
RUN sed -i "{s#^\(deb.*\) http://[^/]*/ubuntu/#\\1 http://mirrors.nhanhoa.com/ubuntu/#}" /etc/apt/sources.list

# -----------------------------------------------------------------------------------
# exemple d'installation d'un utilitaire
# -----------------------------------------------------------------------------------

RUN  apt-get update && apt-get -y install net-tools inetutils-ping inetutils-telnet netcat-openbsd curl && apt-get clean
RUN  apt-get update && apt-get -y install sudo && apt-get clean

HEALTHCHECK CMD curl --fail http://localhost:80/ || exit 1


COPY ./demarre.sh /
RUN chmod a+x /demarre.sh

CMD ["/demarre.sh"]
