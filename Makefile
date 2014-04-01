gtest.o:
	g++ -o $@ -c -I./gtest-1.6.0/ -I./gtest-1.6.0/include/ gtest-1.6.0/src/gtest-all.cc
clean:
	rm -f gtest.o
