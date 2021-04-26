#!/bin/bash

docker run --rm -v `pwd`/.aws:/.aws -v `pwd`/src:/var/task -v `pwd`/layers/python:/layers --env-file .my.env lambci/lambda:python3.8 lambda_function.lambda_handler $(printf '%s' $(cat test.json))
