FROM docker.io/jeanblanchard/alpine-glibc

# author
LABEL maintainer = "tiger"
LABEL version = "1.3"
LABEL description = "直接使用网络资源进行构建，不使用本地文件上传的方式"

#apk add bash && \
RUN mkdir -p /usr/java/jdk && \
	cd /usr/java/jdk && \
	wget -t=5 -O jre1.8.0_281.tar.gz https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244058_89d678f2be164786b292527658ca1605 && \
	tar -zxvf jre1.8.0_281.tar.gz && \
	rm -rf jre1.8.0_281.tar.gz && \ 
	cd jre1.8.0_281 && \
	rm -rf COPYRIGHT LICENSE README release THIRDPARTYLICENSEREADME-JAVAFX.txtTHIRDPARTYLICENSEREADME.txt Welcome.html && \
	rm -rf lib/plugin.jar \
           lib/ext/jfxrt.jar \
           bin/javaws \
           lib/javaws.jar \
           lib/desktop \
           plugin \
           lib/deploy* \
           lib/*javafx* \
           lib/*jfx* \
           lib/amd64/libdecora_sse.so \
           lib/amd64/libprism_*.so \
           lib/amd64/libfxplugins.so \
           lib/amd64/libglass.so \
           lib/amd64/libgstreamer-lite.so \
           lib/amd64/libjavafx*.so \
           lib/amd64/libjfx*.so

ENV JAVA_HOME /usr/java/jdk/jre1.8.0_281
ENV PATH ${PATH}:${JAVA_HOME}/bin

WORKDIR /
