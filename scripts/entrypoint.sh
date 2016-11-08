#!/bin/bash
# Start tomcat service
/opt/tomcat/bin/startup.sh
# Show tomcat log
tail -f /opt/tomcat/logs/catalina.out 