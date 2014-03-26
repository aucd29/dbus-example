#
# COPYRIGHT 2014 Burke Choi All Right Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# istributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# DEFINE
CC=gcc 
INC=-I/usr/local/include/dbus-1.0 -I/usr/local/lib/dbus-1.0/include -L/usr/local/lib
LIBS=-ldbus-1
CFLAGS=-g -Wall -m64 -Ofast -flto -march=native -funroll-loops -DLINUX $(INC)

# BIN NAME
TARGET=dbus-example

# SOURCES
SRCS=dbus-example.c

# OBJECTS
OBJS=$(SRCS:.c=.o)
ALL: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS)

clean:
	rm -rf $(OBJS) $(TARGET)
