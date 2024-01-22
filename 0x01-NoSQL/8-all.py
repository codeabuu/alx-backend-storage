#!/usr/bin/env python3
'''Python function that lists all documents in a collection'''


import pymongo


def list_all(mongo_collection):
    '''loop for return sttmt'''
    if mongo_collection is None:
        return ([])
    lst = mongo_collection.find()
    result = []
    for i in lst:
        result.append(i)
    return result
