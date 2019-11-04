
def _lambda_handler(event, context):
    # TODO: Implement your code here
    print(event)

    # only used in conjunction with API Gateway
    return {"statusCode": 200}


def lambda_handler(event, context):
    try:
        return _lambda_handler(event, context)
    except Exception as e:
        # do any error handling and logging here
        raise e
