#!/bin/bash
cd /cavo2.0/go/src/github.com/cavo

echo $0
echo $1
echo $2
echo $3
echo $4

go get "github.com/jprichardson/readline-go"
echo #########################

go build -v -o /cavo2.0/$2 $1

