math_wrap.cxx math.go: math.i
	swig -c++ -go -intgosize 64 -gccgo math.i

math.o: math.cpp math_wrap.cxx
	g++ -c -fpic math.cpp math_wrap.cxx

libmath.so: math.o math_wrap.o
	g++ -shared math.o math_wrap.o -o libmath.so

.PHONY: clean
clean:
	rm -f math_wrap.cxx math.go math.o math_wrap.o libmath.so
