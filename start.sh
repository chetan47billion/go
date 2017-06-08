#!/bin/bash
cd /cavo2
echo #########################
echo $GOPATH
echo $GOBIN

echo $1
echo #########################
go get gopkg.in/gin-gonic/gin.v1
go build $1

#tail -f /etc/issue
