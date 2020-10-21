FROM solr:8.5.2

COPY lib/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
