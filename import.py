import requests

url = 'http://10.1.0.4:8080/api/v2/users'
headers = {'content-type': 'application/json',
            'Authorization': 'Token bad59aef4497400d8c0383ba8bbddb8b3ec64fd1'}
r = requests.get(url, headers=headers, verify=True) # set verify to False if ssl cert is self-signed

for key, value in r.__dict__.items():
  print(f"'{key}': '{value}'")
  print('------------------')
