import json

def lambda_handler(event, context):
    method = event.get("requestContext", {}).get("http", {}).get("method", "UNKNOWN")
    
    response = {
        "statusCode": 200,
        "headers": { "Content-Type": "application/json" },
        "body": json.dumps({
            "message": f"File processor is active. You made a {method} request.",
            "debug": event
        })
    }
    
    return response
