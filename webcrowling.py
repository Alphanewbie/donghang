from selenium import webdriver
import time

path = "C:/Users/overe/PycharmProjects/Webcrowling/chromedriver.exe"
driver = webdriver.Chrome(path)
driver.get('https://www.diningcode.com/list.php?query='+"잠실동")

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

print(len(searchlist))
for i in range(len(searchlist)) :
    print(searchlist[i])