#!/usr/bin/python3
"""Module documentation"""
import requests


def number_of_subscribers(subreddit):
    headers = {"User-Agent": "api"}
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        return response.json()['data']['subscribers']
    return 0
# response = requests.get("https://www.reddit.com/r/programming/about.json", headers={"User-Agent": "app"})
# print(response.json());
