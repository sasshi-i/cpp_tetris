PWD := $(shell pwd)
SRC_DIR := /src
SRCS := /src/main.cpp
TARGET := main

cmp:
	docker run --rm -v $(PWD)/src:/src cpp_todo_app g++ -o /src/main $(SRCS)

exec:
	docker-compose run --rm -v $(PWD)/src:/src app ./src/main

clean:
	rm -f ./src/main