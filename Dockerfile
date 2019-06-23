FROM viderum/ckan-cloud-provisioning-api:3d113398e2d8377decaf87ff1ab322720cbc52c4

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
