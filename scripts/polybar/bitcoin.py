#!/usr/bin/env python3
import requests

r = requests.get('https://api.coindesk.com/v1/bpi/currentprice.json')
ticker = r.json()

print('%.2f$' % float(ticker['bpi']['USD']['rate'].replace(',','')))
