FROM viderum/ckan-cloud-provisioning-api:6df9e7dc43a0fc6db55ad1680ddd8d7cf0bf81d5

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
