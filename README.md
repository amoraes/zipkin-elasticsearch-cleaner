# Zipkin Elastic Search cleaner
Zipkin Elastic Search Cleaner helps to clean old data from a Zipkin Elastic Search.

It is composed by a docker image that can be run as a daemon, and it will erase
any trace and span data older than the defined threshold.
## How to use

Set the following environment variables:
* ES_HOST_DOMAIN
* ES_HOST_PORT
* USE_SSL (True/False)
* THRESHOLD
* TIME_UNIT

Example:
THRESHOLD 7 and TIME_UNIT days deletes anything zipkin related older than 7 days

## Docker image
amoraes/zipkin-elasticsearch-cleaner