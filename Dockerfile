ARG SOLR_VERSION=8.11.2

FROM solr:$SOLR_VERSION

ARG SOLR_VERSION=8.11.2

COPY lib/${SOLR_VERSION}/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

COPY tapioca /opt/solr/server/solr/configsets/tapioca/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
