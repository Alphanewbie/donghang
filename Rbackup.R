library(RJDBC)
library(DBI)
library(ggplot2)
library(plotly)

drv <- JDBC("oracle.jdbc.driver.OracleDriver","C:/Alpha/ojdbc6.jar")
conn <- dbConnect(drv,"jdbc:oracle:thin:@localhost:1521:xe","jdbctest","jdbctest")
# 객체 정보가 나오면 성공 한것이다.
conn


# 구별로 업종 종류
result1<-dbGetQuery(conn,"select CGG_NAME, SNT_COB_NM
                from gu_code INNER JOIN biz_a
on gu_code.cgg_code = biz_a.cgg_code
                          ")
result1

temp <- ggplot(result1, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(SNT_COB_NM))) +
  labs(title= "구별 업체수 (업종별)") +
  coord_flip()

ggplotly(temp)

#ggsave(temp,"test.html"

# 구별 행정 처분 받은 업종
result1<-dbGetQuery(conn,"select CGG_NAME, SNT_COB_NM
                from gu_code INNER JOIN biz_d
on gu_code.cgg_code = biz_d.cgg_code")

temp2 <- ggplot(result1, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(SNT_COB_NM))) +
  labs(title= "구별 행정 처분 받은 업체수 (업종별)") +
  coord_flip()

ggplotly(temp2)

# 구별 일반 업태 수
result1<-dbGetQuery(conn,"select CGG_NAME,SNT_UPTAE_NM
from gu_code INNER JOIN (select * from biz_d
where SNT_COB_NM = '일반음식점') biz_a
on gu_code.cgg_code = biz_a.cgg_code");

temp2 <- ggplot(result1, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(SNT_UPTAE_NM))) +
  labs(title= "구별 업태 수 (업종별)") +
  coord_flip()

ggplotly(temp2)

# 구별 행정 처분 받은 업태(일반 음식점)
result1<-dbGetQuery(conn,"select CGG_NAME,SNT_UPTAE_NM
from gu_code INNER JOIN (select * from biz_d
where SNT_COB_NM = '일반음식점') biz_d
on gu_code.cgg_code = biz_d.cgg_code")

temp3 <- ggplot(result1, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(SNT_UPTAE_NM))) +
  labs(title= "구별 행정 처분 받은 업종 (일반음식점)") +
  coord_flip()

ggplotly(temp3)

# 구별로 일반 음식점의 수
result1<-dbGetQuery(conn,"select CGG_NAME,count(*) AS CNT from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '일반음식점') biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME")

temp4 <- pie(result1$CNT,labels = result1$CGG_NAME);
temp5 <- ggplot(result1, aes(y=CGG_NAME, x=CNT)) + 
  geom_bar(stat = "identity") +
  coord_polar(theta = "y")+
  labs(title= "구별 행정 처분 받은 업종 (일반음식점)") 
  
ggplotly(temp5)

# 구별 일반 음식점의 폐업률
result1<-dbGetQuery(conn,"
select cgg_name, cnt1/cnt2 AS ratio
from 
(select  CGG_NAME,count(*) AS cnt1 from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '일반음식점') biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME) a
INNER join
(select  CGG_NAME,count(*) AS cnt2 from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '일반음식점' and DCB_YMD is null) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME) b
using (cgg_name)")
#View(result1)

temp3 <- ggplot(result1, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=ratio)) +
  labs(title= "구별 행정 처분 받은 업종 (일반음식점)") +
  coord_flip()

ggplotly(temp3)

# 
result1<-dbGetQuery(conn,"select closeYY, count(closeYY)
from (select to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '일반음식점' and to_char(DCB_YMD,'YYYY') between '2000' AND '2019' )
group by closeYY")


result2 <- dbGetQuery(conn,"
select gu_code.CGG_NAME AS CGG_NAME, biz_a.dcb_gbn_nm AS dcb_gbn_nm
from 
(select CGG_CODE,DCB_GBN_NM
from biz_a
where DCB_GBN_NM is not null and SNT_COB_NM = '일반음식점' and to_char(DCB_YMD,'YYYY') between '1990' AND '2019' ) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code")
View(result2)
temp4 <- ggplot(result2, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(DCB_GBN_NM))) +
  labs(title= "구별 폐업 사유") +
  coord_flip()

result2 <- dbGetQuery(conn,"
select gu_code.CGG_NAME AS CGG_NAME, biz_a.closeYY AS closeYY
from 
(select CGG_CODE,to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '일반음식점' and to_char(DCB_YMD,'YYYY') between '1990' AND '2019' ) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code")

temp4 <- ggplot(result2, aes(x=CGG_NAME)) + 
  geom_bar(aes(fill=factor(CLOSEYY))) +
  labs(title= "구별 연도별 폐업수") +
  coord_flip()


ggplotly(temp4)

# 그 당시 운영중인 가게의 수
result2 <- data.frame()
for (i in 2010:2019){
  query <- paste0(" select ", i, " AS opening, cnt
                    from (select ", i, ",count(*) AS cnt
                    from (select *
                      from gu_code INNER JOIN biz_a
                      on gu_code.cgg_code = biz_a.cgg_code)
                    where SNT_COB_NM='일반음식점' and 
                    SNT_UPTAE_NM = '한식' 
                    and CGG_NAME = '송파구' 
                    and SITE_STDT < to_date('", i, "0101','YYYYMMDD') 
                    and (DCB_YMD>to_date('", i, "0101','YYYYMMDD') 
                    or DCB_YMD is null))")
  temp <- dbGetQuery(conn,query)
 result2 <- rbind(result2, temp)
  }

