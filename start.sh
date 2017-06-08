#!/bin/bash
cd /cavo2.0/go/src/github.com/cavo/cmd
echo #########################
echo $GOPATH
echo $GOBIN

go version

echo $1
echo #########################
go build $1

#tail -f /etc/issue
