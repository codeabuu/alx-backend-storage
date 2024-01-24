#!/usr/bin/env python3
''' store an instance of the Redis client as a private variable named _redis'''

import uuid
import redis
from typing import Union


class Cache:
    def __init__(self):
        '''will store instance of redis'''
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        '''reutrn key'''
        key = str(uuid.uuid4())
        self._redis.set(key, data)

        return key
