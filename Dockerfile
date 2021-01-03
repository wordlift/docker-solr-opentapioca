FROM solr:8.6.3

COPY lib/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

COPY tapioca /opt/solr/server/solr/configsets/tapioca/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
