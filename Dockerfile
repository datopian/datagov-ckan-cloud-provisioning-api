FROM viderum/ckan-cloud-provisioning-api:9e9dc7093e348802d78d7ac2dc592176ae67d266

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
