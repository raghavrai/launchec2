import boto3

def lambda_handler(event, context):
    ec2_regions        = []
    boto3_client       = boto3.client('ec2')
    
    # getting list of all regions
    for region in boto3_client.describe_regions()['Regions']:
        ec2_regions.append(region['RegionName'])
    
    # fetching list of instances in every region one by one
    for region in ec2_regions:
        conn           = boto3.resource('ec2', region_name=region)
        instances      = conn.instances.filter()
        
        print("\n listing ec2 instances in ", region, "..")
        for instance in instances:
            print(instance.id)