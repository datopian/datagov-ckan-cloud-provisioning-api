FROM viderum/ckan-cloud-provisioning-api:93a7a70e5f826e3a518be57317a70107e6f0c02c

USER root

RUN rm $APP_PATH/templates/kind*yaml
ADD kinds/* $APP_PATH/templates/

USER $GUNICORN_USER
