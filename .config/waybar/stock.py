#!/usr/bin/python
import json
import urllib.request


def main():
    with urllib.request.urlopen('https://blockchain.info/ticker') as response:
        data = json.loads(response.read())
        usd = data['USD']['last']
        print(f'₿ {usd:,.0f}')


if __name__ == "__main__":
    main()
