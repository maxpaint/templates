Oracle JDBC ojdbc6 Jar as a Maven Dependency

Most recently, I did the following:

1) Download the jar file to my machine http://www.oracle.com/technetwork/database/features/jdbc/index-091264.html
   Or find on lib directory

2) Run the following command to install the jar into my local repository:

mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0.4 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true

3) Finally, I put the dependency into my gradle file:

"com.oracle:ojdbc6:11.2.0.4"