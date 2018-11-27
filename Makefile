CXX = g++
HEADERS_PATH = include
PARAMS = -std=c++17 -lboost_system -lpthread -I $(HEADERS_PATH)
SRCS_PATH = src
SRCS = \
	$(SRCS_PATH)/Message.cpp \
	$(SRCS_PATH)/MRUDPSocket.cpp

server : $(SRCS) $(SRCS_PATH)/server.cpp
	$(CXX) $(SRCS) $(SRCS_PATH)/server.cpp $(PARAMS) -o server.out 

client: $(SRCS) $(SRCS_PATH)/client.cpp
	$(CXX) $(SRCS) $(SRCS_PATH)/client.cpp $(PARAMS) -o client.out
 
