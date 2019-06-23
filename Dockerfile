FROM viderum/ckan-cloud-provisioning-api:8c72c441aa056dc77ce935e05cdd91230307a7c4

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
