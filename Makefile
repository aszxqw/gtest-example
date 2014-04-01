test.run: gtest-all.o gtest_main.o TFoo.o
	g++ -o $@ $^ -lpthread

gtest-all.o:
	g++ -o $@ -c -I./gtest-1.6.0/ -I./gtest-1.6.0/include/ gtest-1.6.0/src/gtest-all.cc
gtest_main.o:
	g++ -o $@ -c -I./gtest-1.6.0/ -I./gtest-1.6.0/include/ gtest-1.6.0/src/gtest_main.cc
TFoo.o:
	g++ -o $@ -c -I./gtest-1.6.0/ -I./gtest-1.6.0/include/ TFoo.cpp
	
clean:
	rm -f *.o test.run
