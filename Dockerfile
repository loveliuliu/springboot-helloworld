FROM harbor.mobilemd.cn/baseimg/baseimg-maven:latest

#ENV WORK_HOME /usr/lib/tomcat/apache-tomcat
#ENV PATH $WORK_HOME:$PATH
ENV JAR_NAME springboot-1.5.18.RELEASE.jar

ADD target/$JAR_NAME $WORK_HOME/springboot.jar

ENTRYPOINT ["java","-jar","springboot.jar"]
#CMD ["$JAVA_HOME/bin/java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=1 -XshowSettings:vm -Dclient.encoding.override=UTF-8 -Dfile.encoding=UTF-8 -Duser.language=zh -Duser.region=CN -XX:+PrintGCDateStamps -XX:+PrintGCDetails -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=logs/heapDump.hprof  -Xloggc:logs/gc.log -DapplicationName=springboot-helloworld -Dcatalina.base=$WORK_HOME -Dcatalina.home=$WORK_HOME  -jar  $JAR_NAME --server.port=80"]
