FROM viderum/ckan-cloud-provisioning-api:7a10beb26ce732cdc50f6e8dc4ac093e92f5c47a

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
