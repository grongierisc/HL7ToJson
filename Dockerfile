
ARG IMAGE=store/intersystems/irishealth-community:2020.1.0.202.0
FROM $IMAGE

USER root

WORKDIR /opt/hl7tojson
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/hl7tojson

USER irisowner

COPY  Installer.cls .
COPY  src src
COPY irissession.sh /
SHELL ["/irissession.sh"]

RUN \
  do $SYSTEM.OBJ.Load("Installer.cls", "ck") \
  set sc = ##class(App.Installer).setup() 

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
