main: export CGO_ENABLED = 1
main: export GOOS = linux
main: export GOARCH = amd64
main: math/libmath.so main.go
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${PWD}/math go build -x -ldflags '-w' -o main

math/libmath.so:
	$(MAKE) -C math libmath.so

.PHONY: clean
clean:
	rm -f main
	$(MAKE) -C math clean
