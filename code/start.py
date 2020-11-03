#!/usr/bin/python3

import time

time.sleep(500)

print("Start here!")

def inc(x):
    return x + 1


def test_answer():
    assert inc(3) == 5
