import os.path
import tempfile
import uuid
import pymongo

ROBOT_LISTENER_API_VERSION = 2

#mongoconfig
mongo_servername = "localhost:27017"
mongo_dbname = "robot_results"
mongo_collectionname = "results"

#open mongo connection
mongo_client = pymongo.MongoClient("mongodb://"+mongo_servername+"/")
mongo_db = mongo_client[mongo_dbname]
mongo_collection = mongo_db[mongo_collectionname]

#unique run guid to link all data
run_guid = uuid.uuid4().hex
run_sequence = 0
suite_id = uuid.uuid4().hex
parent_stack = ["0"]

#event-listeners
def start_suite(name, attrs):
    #generate object id and maintain parent stack
    global run_sequence
    run_sequence+=1
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.append(object_id)

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,
        "suite_id" : suite_id,
        "object_id" : object_id,
        "parent_id" : parent_id,
        "event_type":"start_suite",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    
    
def start_test(name, attrs):
    #generate object id and maintain parent stack
    global run_sequence    
    run_sequence+=1    
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.append(object_id)

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,    
        "suite_id" : suite_id,  
        "object_id" : object_id,
        "parent_id" : parent_id,                  
        "event_type":"start_test",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    

def start_keyword(name, attrs):
    #generate object id and maintain parent stack
    global run_sequence    
    run_sequence+=1    
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.append(object_id)

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,    
        "suite_id" : suite_id,  
        "object_id" : object_id,
        "parent_id" : parent_id,                  
        "event_type":"start_keyword",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    

def end_test(name, attrs):   
    #generate object id and maintain parent stack
    global run_sequence    
    run_sequence+=1    
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.pop()    

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,    
        "suite_id" : suite_id,  
        "object_id" : object_id, 
        "parent_id" : parent_id,                 
        "event_type":"start_keyword",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    

def end_suite(name, attrs):
    global suite_id
    global run_sequence

    #generate object id and maintain parent stack
    run_sequence+=1    
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.pop()    

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,    
        "suite_id" : suite_id,  
        "object_id" : object_id,
        "parent_id" : parent_id,                  
        "event_type":"end_suite",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    
    suite_id = uuid.uuid4().hex

def end_keyword(name, attrs):
    #generate object id and maintain parent stack
    global run_sequence        
    run_sequence+=1    
    parent_id = parent_stack[-1] # get last element in array
    object_id = suite_id = uuid.uuid4().hex
    parent_stack.pop()    

    data = {"run_id" : run_guid,
        "run_sequence" : run_sequence,    
        "suite_id" : suite_id,  
        "object_id" : object_id,
        "parent_id" : parent_id,                  
        "event_type":"end_keyword",
        "name":name,
        "data":[{'name':key,"value":value} for key,value in attrs.items()]}
    mongo_collection.insert_one(data)    
#undefined 
#def close():
