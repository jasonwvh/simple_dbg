CXX := g++
CXXFLAGS := -std=c++11 -I/home/jwong13/vcpkg/installed/x64-linux/include
LDFLAGS := -L/home/jwong13/vcpkg/installed/x64-linux/lib
LDLIBS := -llinenoise

SRCS := src/dbg.cpp
OBJS := $(SRCS:.cpp=.o)
TARGET := dbg

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)
