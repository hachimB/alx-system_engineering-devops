#!/usr/bin/python3
"""Module documentation"""
import requests


def top_ten(subreddit):
    """top ten"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        if 'children' in data['data']:
            for i in range(min(10, len(data['data']['children']))):
                print(data['data']['children'][i]['data']['title'])
        else:
            print(None)
    else:
        print(None)
