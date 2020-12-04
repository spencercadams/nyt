from datetime import datetime
from datetime import date
import requests

now = datetime.now() # current date and time	

today = date.today()
d1 = today.strftime("%Y/%m/%d")
frontpage = 'https://static01.nyt.com/images/'+d1+'/nytfrontpage/scan.pdf'

print(frontpage)

url = "https://api.short.cm/links/402770597"

import json
payload = json.dumps({"allowDuplicates": False, "domain": "spencercadams.shortcm.li", "path": "nyt", "originalURL": (frontpage) })
headers = {
    'accept': "application/json",
    'content-type': "application/json",
    'authorization': "4gzUSKDCTxMTnfkIbp4cuH40Isa3LC3k"
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
