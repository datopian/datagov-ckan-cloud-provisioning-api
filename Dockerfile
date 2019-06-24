FROM viderum/ckan-cloud-provisioning-api:02aea41714087f5a2c55e9b1b80cc55aee4c6b3a

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
