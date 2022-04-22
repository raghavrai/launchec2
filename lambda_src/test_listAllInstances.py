import pytest
from listAllInstances import *

def test_lambda_handler():
    test_event = {}
    test_context    = {}
    
    response =  lambda_handler(test_event, test_context)
    
    # asserting the lambda function response
    assert response["status"] == "Success"
    assert "us-east-1" in response == True