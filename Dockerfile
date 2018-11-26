FROM viderum/ckan-cloud-provisioning-api

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
