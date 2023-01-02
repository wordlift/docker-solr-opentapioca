ARG SOLR_VERSION=8.11.2

FROM solr:$SOLR_VERSION

ARG SOLR_VERSION=8.11.2

COPY lib/${SOLR_VERSION}/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

COPY tapioca /opt/solr/server/solr/configsets/tapioca/

# COPY opentapioca-1 /opt/solr/server/solr/configsets/opentapioca-1/
# COPY opennlp /var/solr/data/userfiles/opentapioca-1/

COPY opennlp /var/solr/data/userfiles/tapioca/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
