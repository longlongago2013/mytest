FROM daocloud.io/rockytan/docker-base-maven-tomcat:latest

ADD pom.xml /tmp/build/
RUN cd /tmp/build && mvn -q dependency:resolve

ADD src /tmp/build/src
        #����Ӧ��
RUN cd /tmp/build && mvn -q -DskipTests=true package \
        #������������ָ��Ŀ¼
	&& rm -rf $CATALINA_HOME/webapps/* \
        && mv target/*.war $CATALINA_HOME/webapps/ROOT.war \
        #�������ۼ�
        && cd / && rm -rf /tmp/build
