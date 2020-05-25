# import requests
# import re
# from bs4 import BeautifulSoup
#
# header = {'User-Agent' : 'Mozilla/5.0', 'referer' : 'http://naver.com'}
# # header = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}
# url = 'https://search.naver.com/search.naver'
# param = {
# 	'where' : 'review',
#     'sm' : 'tab_pge',
# 	'query' : '파오파오'+' '+'잠실동',
#     'start' : '1'
# }
# # req = requests.get(url,headers=header)
# # req = requests.get(url,params=param,headers=header)
# html = req.text
# soup = BeautifulSoup(html, 'html.parser')
#
# reviewnum = int(re.findall("\d+",soup.find("span","title_num").text.split("/")[1])[0])
# area = soup.find_all("a","review_tit")
#
# # print(reviewnum)
#
# reviewlist = []
# for link in area :
#     temp = link['href']
#     reviewlist.append(temp)
# # print(reviewlist)
#
# # for i in range(1,reviewnum//10) :
# #     if(i>5) :
# #         break
# #     param['start']=1*10 + 1
# #     req = requests.get(url, params=param, headers=header)
# #     html = req.text
# #     soup = BeautifulSoup(html, 'html.parser')
# #
# #     area = soup.find_all("a", "review_tit")
# #     for link in area:
# #         temp = link['href']
# #         reviewlist.append(temp)
#
# for item in reviewlist :
#     textreq = requests.get(item)
#     texthtml = textreq.text
#     textsoup = BeautifulSoup(texthtml, 'html.parser')
#
#     textarea = textsoup.find("div",{"class": "se-viewer se-theme-default"})
#
#     print(textarea)
#
# print(reviewlist)

# 검색 방식


from selenium import webdriver
from PyKomoran import *
from bs4 import BeautifulSoup
import requests
import time
import re

searchlocal = '잠실동'

komoran = Komoran("EXP")

path = "C:/Users/overe/PycharmProjects/Webcrowling/chromedriver.exe"
driver = webdriver.Chrome(path)

# 이전 템포

driver.get('https://www.diningcode.com/list.php?query='+searchlocal)

searchlist = []
searchlistname = []
# for i in range(9) :
#     time.sleep(2)
#     driver.find_element_by_css_selector("#div_list_more > a").click()
i=0
while(True) :
    # if i>120 :
    if i > 12:
        break
    if len(searchlist) == 100 :
        break
    path = "/html/body/div[3]/div/div[2]/div/div[1]/div[1]/ul/li["+str(2+i)+"]/a"
    namepath = "/html/body/div[3]/div/div[2]/div/div[1]/div[1]/ul/li["+str(2+i)+"]/a/span[2]"
    i = i + 1
    name = driver.find_elements_by_xpath(namepath)
    temp = driver.find_elements_by_xpath(path)
    if temp == [] :
        continue
    # 링크 뽑아오는 것
    searchlist.append([name[0].text.split(" ")[1],temp[0].get_attribute('href')])
    # 위의 span[2]와 함께 가게 이름 뽑아오는 것
    # searchlist.append(temp[0].text);

# print(len(searchlist))
i=0

wordDic= [{} for i in range(len(searchlist))]
for i in range(len(searchlist)) :
    if(i == len(searchlist)) :
        break
    try:
        driver.get(searchlist[i][1])

        reviewNum = int(
            re.findall("\d+", driver.find_element_by_css_selector("#div_profile > div.s-list.appraisal > p").text)[0])
        reviewNum = reviewNum + (reviewNum // 5 + 1)
        # reviewList = []

        while (True):
            time.sleep(2)
            try:
                driver.find_element_by_css_selector("#div_more_review").click()
            except:
                break

        for j in range(reviewNum):

            path = "/ html / body / div[3] / div / div[7] / div / div[2] / div[1] / div[8] / div[3] / div[" + str(
                j + 1) + "]"
            temp = driver.find_elements_by_xpath(path + "/ p[3]")
            if (temp == []):
                temp = driver.find_elements_by_xpath(path + "/ p[2]")

                if (temp == []):
                    continue
            alpha = temp[0].text
            beta = komoran.get_list(temp[0].text)
            for j in beta:
                if 'ET' in j.get_second() or 'XS' in j.get_second() or j.get_first() == '':
                    continue
                elif 'N' in j.get_second():
                    word = j.get_first()
                    if (word == '막' or word == '것') :
                        continue
                    if word not in wordDic[i]:
                        wordDic[i][word] = 1
                    else:
                        wordDic[i][word] += 1
                elif 'V' in j.get_second():
                    word = j.get_first() + "다"
                    if (word == '이다' or word == '먹다' or word == '있다' or word == '하다' or word == '않다' or
                            word == '지다' or word == '나다' or word == '같다') :
                        continue
                    if word not in wordDic[i]:
                        wordDic[i][word] = 1
                    else:
                        wordDic[i][word] += 1

        print(sorted(wordDic[i].items(),reverse=True, key=lambda item: item[1]))
        i=i+1
    except :
        i= i-1
        time.sleep(5)
        continue

header = {'User-Agent' : 'Mozilla/5.0', 'referer' : 'http://naver.com'}
url = 'https://search.naver.com/search.naver'

for i in range(len(searchlist)) :
    try :
        param = {
            'where' : 'review',
            'sm' : 'tab_pge',
            'query' : searchlist[i][0]+' '+searchlocal,
            'start' : '1'
        }
        # req = requests.get(url,headers=header)
        req = requests.get(url,params=param,headers=header)
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

        for i in range(1,reviewnum//10) :
            if(i>2) :
                break
            param['start']=1*10 + 1
            req = requests.get(url, params=param, headers=header)
            html = req.text
            soup = BeautifulSoup(html, 'html.parser')

            area = soup.find_all("a", "review_tit")
            for link in area:
                temp = link['href']
                reviewlist.append(temp)

        # for item in reviewlist :
        #     textreq = requests.get(item)
        #     texthtml = textreq.text
        #     textsoup = BeautifulSoup(texthtml, 'html.parser')
        #
        #     textarea = textsoup.find("div",{"class": "se-viewer se-theme-default"})
        #
        #     print(textarea)
    except:
        continue

    for reviewlink in reviewlist :
        try :
            driver.get(reviewlink)
            driver.switch_to_frame('mainFrame')

            soups = BeautifulSoup(driver.page_source, 'html.parser')

            reviewtext = soups.find("div", "se-main-container").find_all("span")

            for item in reviewtext:
                text = item.text
                if (len(text) < 2):
                    continue
                print(text)
            #     beta = komoran.get_list(text)
            #     for j in beta:
            #         if 'ET' in j.get_second() or 'XS' in j.get_second() or j.get_first() == '':
            #             continue
            #         elif 'N' in j.get_second():
            #             word = j.get_first()
            #             if (word == '막' or word == '것'):
            #                 continue
            #             if word not in wordDic[i]:
            #                 wordDic[i][word] = 1
            #             else:
            #                 wordDic[i][word] += 1
            #         elif 'V' in j.get_second():
            #             word = j.get_first() + "다"
            #             if (word == '이다' or word == '먹다' or word == '있다' or word == '하다' or word == '않다' or
            #                     word == '지다' or word == '나다' or word == '같다'):
            #                 continue
            #             if word not in wordDic[i]:
            #                 wordDic[i][word] = 1
            #             else:
            #                 wordDic[i][word] += 1
            # print(sorted(wordDic[i].items(), reverse=True, key=lambda item: item[1]))
        except:
            continue