import json

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))  # This will show up in CloudWatch

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({"message": "File processed", "received": event})
    }
