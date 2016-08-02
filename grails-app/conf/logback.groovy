import grails.util.BuildSettings
import grails.util.Environment

// See http://logback.qos.ch/manual/groovy.html for details on configuration
appender('STDOUT', ConsoleAppender) {
    encoder(PatternLayoutEncoder) {
        pattern = "%d{yyyy-MM-dd HH:mm:ss.SSS} [%thread] %-5level %logger \\(%line\\) - %msg%n"
        //pattern = "%d{dd-MM-yyyy HH:mm:ss,SSS} [%t] %5p %c{2}(%L) - %m%n"

        //%d{dd-MM-yyyy HH:mm:ss,SSS} [%t] %5p %c{2}(%L) - %m%n
    }
}

root(INFO, ['STDOUT'])

def targetDir = BuildSettings.TARGET_DIR
if (Environment.isDevelopmentMode() && targetDir) {
    appender("FULL_STACKTRACE", FileAppender) {
        file = "${targetDir}/stacktrace.log"
        append = true
        encoder(PatternLayoutEncoder) {
            pattern = "%level %logger - %msg%n"
        }
    }
    logger("StackTrace", ERROR, ['FULL_STACKTRACE'], false)
}

logger 'grails.app.controllers', INFO, ['STDOUT']
logger 'grails.app.services', INFO, ['STDOUT']
logger 'org.springframework', INFO, ['STDOUT']
logger 'org.hibernate', INFO, ['STDOUT']