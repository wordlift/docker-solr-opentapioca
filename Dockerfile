ARG SOLR_VERSION=8.11.2

FROM solr:$SOLR_VERSION

COPY tapioca /opt/solr/server/solr/configsets/tapioca/
COPY linkingidx /opt/solr/server/solr/configsets/linkingidx/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
