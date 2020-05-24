from selenium import webdriver
from PyKomoran import *
import time
import re

komoran = Komoran("EXP")

path = "C:/Users/overe/PycharmProjects/Webcrowling/chromedriver.exe"
driver = webdriver.Chrome(path)

# 이전 템포

driver.get('https://www.diningcode.com/list.php?query='+'잠실동')

searchlist = []

for i in range(9) :
    time.sleep(2)
    driver.find_element_by_css_selector("#div_list_more > a").click()
i=0
while(True) :
    if i>110 :
        break
    if len(searchlist) == 100 :
        break
    path = "/html/body/div[3]/div/div[2]/div/div[1]/div[1]/ul/li["+str(2+i)+"]/a"
    # path = "/html/body/div[3]/div/div[2]/div/div[1]/div[1]/ul/li[" + str(2 + i) + "]/a/ span[2]"

    i = i + 1
    temp = driver.find_elements_by_xpath(path)
    if temp == [] :
        continue
    # 링크 뽑아오는 것
    searchlist.append(temp[0].get_attribute('href'))
    # 위의 span[2]와 함께 가게 이름 뽑아오는 것
    # searchlist.append(temp[0].text);

# print(len(searchlist))
for i in range(len(searchlist)) :
    try:
        driver.get(searchlist[i])

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

        wordDic = {}

        for i in range(reviewNum):

            path = "/ html / body / div[3] / div / div[7] / div / div[2] / div[1] / div[8] / div[3] / div[" + str(
                i + 1) + "]"
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
                    if word not in wordDic:
                        wordDic[word] = 1
                    else:
                        wordDic[word] += 1
                elif 'V' in j.get_second():
                    word = j.get_first() + "다"
                    if (word == '이다' or word == '먹다' or word == '있다' or word == '하다' or word == '않다' or
                            word == '지다' or word == '나다' or word == '같다') :
                        continue
                    if word not in wordDic:
                        wordDic[word] = 1
                    else:
                        wordDic[word] += 1

        print(sorted(wordDic.items(),reverse=True, key=lambda item: item[1]))
    except :
        i= i-1
        time.sleep(5)
        continue