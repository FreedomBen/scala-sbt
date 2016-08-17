FROM openjdk:7

ENV SCALA_MINOR_VERSION 2.11
ENV SCALA_VERSION 2.11.8
ENV SBT_VERSION 0.13.12

RUN wget -qO- http://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C /usr/local/share/ \
 && wget -qO- http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz | tar xfz - -C /usr/local/share/

ENV SCALA_HOME /usr/local/share/scala-$SCALA_VERSION
ENV SBT_HOME /usr/local/share/sbt

ENV PATH $PATH:$SCALA_HOME/bin
ENV PATH $PATH:$SBT_HOME/bin
