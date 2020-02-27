#!/usr/bin/python
import json
import urllib.request


def main():
    url = "https://api.coinmarketcap.com/v1/ticker/"
    with urllib.request.urlopen(url) as response:
        data = json.loads(response.read())
        data = data[:9]
        data = [
            "{:4}  {:<7.5g}  {:+5}%".format(
                i["symbol"], float(i["price_usd"]), float(i["percent_change_24h"])
            )
            for i in data
        ]
        data = json.dumps({"text": data[0], "tooltip": "\n".join(data)})
        print(data)


if __name__ == "__main__":
    main()
