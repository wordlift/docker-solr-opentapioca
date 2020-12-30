FROM solr:8.6.3

COPY lib/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
