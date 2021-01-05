ARG SOLR_VERSION=8.6.3

FROM solr:$SOLR_VERSION

ARG SOLR_VERSION=8.6.3

COPY lib/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

USER 0:0 

RUN curl -Lo /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/lucene-analyzers-icu-${SOLR_VERSION}.jar \
     https://repo1.maven.org/maven2/org/apache/lucene/lucene-analyzers-icu/${SOLR_VERSION}/lucene-analyzers-icu-${SOLR_VERSION}.jar ; \
    curl -Lo /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/lucene-analyzers-morfologik-${SOLR_VERSION}.jar \
     https://repo1.maven.org/maven2/org/apache/lucene/lucene-analyzers-icu/${SOLR_VERSION}/lucene-analyzers-morfologik-${SOLR_VERSION}.jar ; \
    curl -Lo /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/lucene-analyzers-smartcn-${SOLR_VERSION}.jar \
     https://repo1.maven.org/maven2/org/apache/lucene/lucene-analyzers-icu/${SOLR_VERSION}/lucene-analyzers-smartcn-${SOLR_VERSION}.jar

COPY tapioca /opt/solr/server/solr/configsets/tapioca/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
