
def _lambda_handler(event, context):
    # TODO: Implement your code here
    print(event)


def lambda_handler(event, context):
    try:
        _lambda_handler(event, context)
    except Exception as e:
        # do any error handling and logging here
        raise e
