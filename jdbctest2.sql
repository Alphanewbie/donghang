select CGG_NAME,SNT_UPTAE_NM
from gu_code INNER JOIN (select * from biz_d
where SNT_COB_NM = '�Ϲ�������') biz_d
on gu_code.cgg_code = biz_d.cgg_code;

select CGG_NAME,count(*)
from gu_code INNER JOIN biz_a
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME;

select * from biz_a;

--������ ���� ������ ��


-- ���� ������ ��
select  CGG_NAME,count(*) from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '�Ϲ�������' and DCB_YMD is null) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME;

select cgg_name, cnt1/cnt2
from 
(select  CGG_NAME,count(*) AS cnt1 from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '�Ϲ�������') biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME) a
INNER join
(select  CGG_NAME,count(*) AS cnt2 from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '�Ϲ�������' and DCB_YMD is null) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME) b
using (cgg_name);


ALTER TABLE gu_code
RENAME COLUMN �ñ�����_�ѱ� to CGG_NAME;


select  CGG_NAME,count(*) AS cnt from 
(select distinct(PERM_NT_NO),CGG_CODE from biz_a where SNT_COB_NM = '�Ϲ�������') biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
group by gu_code.CGG_NAME;


select *
from biz_a;
where to_char(DCB_YMD,'YYYY') is not null;

drop table biz_a;


select closeYY, count(closeYY)
from (select to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '�Ϲ�������' and to_char(DCB_YMD,'YYYY') between '2000' AND '2019' )
group by closeYY;

select to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') between '1950' AND '2050';


select CGG_NAME,SNT_UPTAE_NM
from gu_code INNER JOIN (select * from biz_d
where SNT_COB_NM = '�Ϲ�������') biz_a
on gu_code.cgg_code = biz_a.cgg_code;


select closeYY, count(closeYY)
from (select to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '�Ϲ�������' and to_char(DCB_YMD,'YYYY') between '2000' AND '2019' )
group by closeYY;



select gu_code.CGG_NAME AS CGG_NAME, biz_a.closeYY AS closeYY
from 
(select CGG_CODE,to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '�Ϲ�������' and to_char(DCB_YMD,'YYYY') between '1990' AND '2019' ) biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code;


select closeYY, count(closeYY)
from (select to_char(DCB_YMD,'YYYY') AS closeYY
from biz_a
where to_char(DCB_YMD,'YYYY') is not null and SNT_COB_NM = '�Ϲ�������' and to_char(DCB_YMD,'YYYY') between '2000' AND '2019' )
group by closeYY;

select SNT_UPTAE_NM,count(*)
from biz_a
where SNT_COB_NM='�Ϲ�������'
group by SNT_UPTAE_NM
order by count(*) desc;


select SNT_UPTAE_NM,count(*)
from biz_d
where SNT_COB_NM='�Ϲ�������'
group by SNT_UPTAE_NM
order by count(*) desc;

select *
from
(select *
from biz_a INNER JOIN gu_code
on gu_code.cgg_code = biz_a.cgg_code
where CGG_NAME = '������' and to_char(DCB_YMD,'YYYY') between '1990' AND '2019')
left join biz_d;

select * from biz_a;

-- ���ı� ������ ���� ��
select to_char(SITE_STDT,'YYYY'),count(*)
from (select DISTINCT PERM_NT_NO, SITE_STDT
from biz_a inner join gu_code
on gu_code.cgg_code = biz_a.cgg_code
where SNT_COB_NM='�Ϲ�������' and SNT_UPTAE_NM = '�ѽ�' and CGG_NAME = '���ı�' and to_char(SITE_STDT,'YYYY') between '2010' AND '2019')
group by to_char(SITE_STDT,'YYYY')
order by to_char(SITE_STDT,'YYYY');

-- ���ı� ������ Ŭ���� ��
select to_char(DCB_YMD,'YYYY'),count(*)
from (select DISTINCT PERM_NT_NO, DCB_YMD
from biz_a inner join gu_code
on gu_code.cgg_code = biz_a.cgg_code
where SNT_COB_NM='�Ϲ�������' and SNT_UPTAE_NM = '�ѽ�' and CGG_NAME = '���ı�' and to_char(DCB_YMD,'YYYY') between '2010' AND '2019')
group by to_char(DCB_YMD,'YYYY')
order by to_char(DCB_YMD,'YYYY');


-- ���� ��, Ŭ���� ��
-- �ش� ��
select 2018,count(*)
from (select *
from gu_code INNER JOIN biz_a
on gu_code.cgg_code = biz_a.cgg_code)
where SNT_COB_NM='�Ϲ�������' and SNT_UPTAE_NM = '�ѽ�' and CGG_NAME = '���ı�' and SITE_STDT < to_date('20180101','YYYYMMDD') and (DCB_YMD>to_date('20180101','YYYYMMDD') or DCB_YMD is null);
select count(*) from biz_a
select SITE_STDT
from biz_a;

                select 2018 AS opening, cnt
                from    (select 2018,count(*) AS cnt
                    from (select *
                      from gu_code INNER JOIN biz_a
                      on gu_code.cgg_code = biz_a.cgg_code)
                    where SNT_COB_NM='�Ϲ�������' and 
                    SNT_UPTAE_NM = '�ѽ�' 
                    and CGG_NAME = '���ı�' 
                    and SITE_STDT < to_date('20180101','YYYYMMDD') 
                    and (DCB_YMD>to_date('20180101','YYYYMMDD') 
                    or DCB_YMD is null))
