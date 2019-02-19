FROM viderum/ckan-cloud-provisioning-api:fdf6404e1363948f5cdd8e44bd33b732f471fb11

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
