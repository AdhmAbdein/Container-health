FROM nginx
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD curl -f http://localhost:80

#--interval=30s: This specifies that the health check will run every 30 seconds.
#--timeout=5s: This indicates that the health check command has 5 seconds to respond. If it takes longer, it is considered a failure.
#--retries=3: This specifies that Docker will consider the container unhealthy if it fails 3 consecutive health checks.
