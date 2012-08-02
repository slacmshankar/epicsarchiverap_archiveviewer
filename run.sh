#!/bin/bash

export CLASSPATH=.
export CLASSPATH=${CLASSPATH}:./bin
export CLASSPATH=${CLASSPATH}:ext_jars/com.jar
export CLASSPATH=${CLASSPATH}:ext_jars/jcommon-0.9.6.jar
export CLASSPATH=${CLASSPATH}:ext_jars/jrendezvous.jar
export CLASSPATH=${CLASSPATH}:ext_jars/mem-moni.jar
export CLASSPATH=${CLASSPATH}:ext_jars/servlet.jar
export CLASSPATH=${CLASSPATH}:ext_jars/xal.jar
export CLASSPATH=${CLASSPATH}:ext_jars/xmlrpc-1.1.jar
export CLASSPATH=${CLASSPATH}:ext_jars/pbrawclient-0.0.1.jar
export CLASSPATH=${CLASSPATH}:ext_jars/protobuf-java-2.4.1.jar
export CLASSPATH=${CLASSPATH}:ext_jars/joda-time-2.0.jar
export CLASSPATH=${CLASSPATH}:ext_jars/log4j-1.2.16.jar
export CLASSPATH=${CLASSPATH}:ext_jars/jca-2.3.3.jar

echo "Classpath is ${CLASSPATH}"

java \
-Dlog4j.configuration=log4j.properties \
-classpath ${CLASSPATH} \
epics.archiveviewer.base.Launcher \
-u pbraw://cdlx27.slac.stanford.edu:17665/retrieval