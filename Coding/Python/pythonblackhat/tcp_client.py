#!/usr/bin/python

"""
TCP Client in python
"""

import socket

TARGET_HOST = "www.google.com"
TARGET_PORT = 80

# Create a socket object
CLIENT = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# connect the client
CLIENT.connect((TARGET_HOST, TARGET_PORT))

# send some data
CLIENT.send("GET / HTTP/1.1\r\nHost: google.com\r\n\r\n")

# receive some data
RESPONSE = CLIENT.recv(4096)

print(RESPONSE)
