.PHONY: golang

golang:
	docker build -t bickyeric/golang:1.19.1 -f golang/Dockerfile golang
