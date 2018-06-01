import os
import boto3

ssm = boto3.client('ssm')

greeting_parameter = os.environ.get('GREETING') or 'GREETING'
name_parameter = os.environ.get('NAME') or 'NAME'

greeting = ssm.get_parameter(Name=greeting_parameter, WithDecryption=True)
name = ssm.get_parameter(Name=name_parameter, WithDecryption=True)

print("parameter store: "+greeting['Parameter']['Value']+name['Parameter']['Value'])
