#!/usr/bin/env python3
print("Please enter the content you want to talk to the robot.(请直接输入您想与机器人对话的内容)")
import urllib
import requests
def qingyunke(msg):
    url = 'http://api.qingyunke.com/api.php?key=free&appid=0&msg={}'.format(urllib.parse.quote(msg))
    html = requests.get(url)
    return html.json()["content"]
while True:
       msg = input().rstrip()
       print("You>>", msg)
       res = qingyunke(msg)
       print("Robot>>", res)
