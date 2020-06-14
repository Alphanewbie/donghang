import requests
import re
from bs4 import BeautifulSoup

header = {'User-Agent' : 'Mozilla/5.0', 'referer' : 'http://naver.com'}
# header = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}
url = 'https://search.naver.com/search.naver'
param = {
	'where' : 'review',
    'sm' : 'tab_pge',
	'query' : '파오파오'+' '+'잠실동',
    'start' : '1'
}
# req = requests.get(url,headers=header)
# req = requests.get(url,params=param,headers=header)
html = req.text
soup = BeautifulSoup(html, 'html.parser')

reviewnum = int(re.findall("\d+",soup.find("span","title_num").text.split("/")[1])[0])
area = soup.find_all("a","review_tit")

# print(reviewnum)

reviewlist = []
for link in area :
    temp = link['href']
    reviewlist.append(temp)
# print(reviewlist)

# for i in range(1,reviewnum//10) :
#     if(i>5) :
#         break
#     param['start']=1*10 + 1
#     req = requests.get(url, params=param, headers=header)
#     html = req.text
#     soup = BeautifulSoup(html, 'html.parser')
#
#     area = soup.find_all("a", "review_tit")
#     for link in area:
#         temp = link['href']
#         reviewlist.append(temp)

for item in reviewlist :
    textreq = requests.get(item)
    texthtml = textreq.text
    textsoup = BeautifulSoup(texthtml, 'html.parser')

    textarea = textsoup.find("div",{"class": "se-viewer se-theme-default"})

    print(textarea)

print(reviewlist)