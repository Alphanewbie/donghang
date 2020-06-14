result <- dbGetQuery(conn,"
select to_char(DCB_YMD,'YYYY') - to_char(VIOR_YMD,'YYYY') AS upsoyear, cnt
from (select DISTINCT biz_c.VIOR_YMD, biz_c.UPSO_NM, biz_c.SITE_ADDR,biz_c.SITE_STDT,biz_c.DCB_YMD,cnt
from
(select biz_a.UPSO_NM,biz_a.SITE_ADDR,biz_a.SITE_STDT,nvl(biz_a.DCB_YMD,Sysdate + (INTERVAL '10' YEAR)) as DCB_YMD,biz_d.VIOR_YMD
from (SELECT UPSO_NM, SITE_ADDR,VIOR_YMD
FROM biz_d
where DISPO_CTN not like '%폐쇠%' and DISPO_CTN not like '%폐쇄%') biz_d inner join biz_a
on biz_a.upso_nm = biz_d.upso_nm and biz_a.SITE_ADDR = biz_d.SITE_ADDR) biz_c
inner join
(select biz_a.UPSO_NM,biz_a.SITE_ADDR,count(*) AS cnt
from (SELECT UPSO_NM, SITE_ADDR,VIOR_YMD
FROM biz_d
where DISPO_CTN not like '%폐쇠%' and DISPO_CTN not like '%폐쇄%') biz_d inner join biz_a
on biz_a.upso_nm = biz_d.upso_nm and biz_a.SITE_ADDR = biz_d.SITE_ADDR
group by biz_a.UPSO_NM,biz_a.SITE_ADDR) biz_d
on biz_c.UPSO_NM = biz_d.upso_nm
ORDER by VIOR_YMD desc)
where cnt<6 and to_char(DCB_YMD,'YYYY') - to_char(VIOR_YMD,'YYYY') >= 0")

result$UPSOYEAR[result$UPSOYEAR>5]<-6

temp1 <- factor(result$UPSOYEAR,0:6,labels = c('그 해','1년','2년','3년','4년','5년','그 이상'))

temp2 <- ggplot(result, aes(x=CNT)) + 
  geom_bar(aes(fill=temp1),position='fill') +
  labs(title= "행청 처분 받은 횟수 별 유지율") +
  coord_flip()

ggplotly(temp2)
