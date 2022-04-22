import boto3

def lambda_handler(event, context):
    ec2_regions        = []
    ec2_list           = { "status" : "Success" }
    boto3_client       = boto3.client('ec2')
    
    # getting list of all regions
    try:
        for region in boto3_client.describe_regions()['Regions']:
            ec2_regions.append(region['RegionName'])
    except Exception as e:
        print(e)
        return{
            "status"  : "Failure",
            "message" : f"Failed to fetch regions - {e}"
        }
            
    # fetching list of instances in every region one by one
    try:
        for region in ec2_regions:
            conn           = boto3.resource('ec2', region_name=region)
            instances      = conn.instances.filter()

            print("listing ec2 instances in ", region, "..")
            instances_in_region = []
            for instance in instances:
                print(instance.id)
                instances_in_region.append(instance.id)    
            ec2_list[region] = instances_in_region    
    
    except Exception as e:
        print(e)
        return{
            "status"  : "Failure",
            "message" : f"Failed to list instances - {e}"
        }
    return ec2_list