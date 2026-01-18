-- 1. 如果表已经存在，先删除它（防止重复创建报错）
drop table if exists emp;

-- 2. 创建表结构（不设置主键）
create table emp(
    id int comment '编号',
    workno varchar(10) comment '工号',
    name varchar(10) comment '姓名',
    gender char(1) comment '性别',
    age tinyint unsigned comment '年龄',
    idcard char(18) comment '身份证号',
    workaddress varchar(50) comment '工作地址',
    entrydate date comment '入职时间'
) comment '员工表';

-- 3. 插入数据（请确保每一行末尾的分号是英文状态的 ; ）
insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (1, '00001', '柳岩666', '女', 20, '123456789012345678', '北京', '2000-01-15');

insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (2, '00002', '张无忌', '男', 18, '123456789012345670', '北京', '2025-09-01');

insert into emp (id, workno,name,gender,age,idcard,workaddress,entrydate)
values ( 3, '00003', '韦一笑', '男', 38, '123456789712345670', '上海', '2005-08-01');

insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (4,'00004','赵敏','女',18,'123456757123845670','北京'
,'2009-12-01');
insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (5,'00005','小昭','女',16,'123456769012345678','上海'
,'2007-07-01');

insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (6,'00006','杨逍','男',28,'12345678931234567X','北京'
,'2006-01-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (7,'00007','范瑶','男', 40,'123456789212345670','北京','2005-05-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (8,'00008','黛绮丝','女', 38,'123456157123645670','天津','2015-05-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (9,
'00009'
,
'范凉凉'
,
'女'
, 45,
'123156789012345678'
,
'北京'
,
'2010-04-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (10,
'00010'
,
'陈友谅'
,
'男'
, 53,
'123456789012345670'
,
'上海'
,'2011-01-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (11,
'00011'
,
'张士诚'
,
'男'
, 55,
'123567897123465670'
,
'江苏'
,
'2015-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (12,
'00012'
,
'常遇春'
,
'男'
, 32,
'123446757152345670'
,
'北京'
,'2004-02-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (13,
'00013'
,
'张三丰'
,
'男'
, 88,
'123656789012345678'
,
'江苏'
,
'2020-11-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (14,
'00014'
,
'灭绝'
,
'女'
, 65,
'123456719012345670'
,
'西安'
,
'2019-05-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (9,
'00009'
,
'范凉凉'
,
'女'
, 45,
'123156789012345678'
,
'北京'
,
'2010-04-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (10,
'00010'
,
'陈友谅'
,
'男'
, 53,
'123456789012345670'
,
'上海'
,
'2011-01-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (11,
'00011'
,
'张士诚'
,
'男'
, 55,
'123567897123465670'
,
'江苏'
,
'2015-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (12,
'00012'
,
'常遇春'
,
'男'
, 32,
'123446757152345670'
,
'北京'
,
'2004-02-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (13,
'00013'
,
'张三丰'
,
'男'
, 88,
'123656789012345678'
,
'江苏'
,
'2020-11-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (14,
'00014'
,
'灭绝'
,
'女'
, 65,
'123456719012345670'
,
'西安'
,
'2019-05-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values (15,'00015','胡青牛','男',70,'12345674971234567X'
,'西安','2018-04-01');

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (16,'00016','周芷若','女',18,null,'北京'
,'2012-06-01');



-- -----------------------------------------------------------------

-- 基本查询
-- 1.指定查询字段 name、workno、age 返回
select emp.name,age
from emp;

SELECT * FROM emp;

SELECT emp.workaddress AS '上班地址'
FROM emp;

SELECT DISTINCT workaddress '上班地址' from emp;

-- 1.查询年龄等于88的员工：
select * FROM emp
WHERE age = '88';

-- 2.查询年龄小于20的员工信息：
select * FROM emp
WHERE age < 20;

-- 3.查询年龄小于等于20的员工信息：
select * FROM emp
WHERE age <= 20;

-- 4.查询没有身份证号的员工信息：
select * FROM emp
WHERE idcard IS NULL;

-- 5.查询有身份证号的员工信息：
select * FROM emp
WHERE idcard is not null;

-- 6.查询年龄不等于88的员工信息：
select * FROM emp
WHERE age <> 88;

-- 7.查询年龄在15岁（包含）到20岁（包含）之间的员工信息：
select * FROM emp
WHERE age between 15 and 20;

-- 8.查询性别为女且年龄小于25岁的员工信息：
select * FROM emp
WHERE gender = '女' and age < 25;

-- 9.查询年龄等于18或20或40岁的员工信息：
select * FROM emp
WHERE age = 18 or age = 20 or age = 40;
#第二种方式：
    select * FROM emp
    WHERE age IN (18,20,40);

-- 10.查询姓名为两个字的员工名字：
select * FROM emp
WHERE name like '__';

-- 11.查询身份证号最后一位是x的员工信息
select * FROM emp
WHERE idcard like '%x';

-- -----------------------------------------------------

-- 聚合函数：注意null不参与聚合函数的计算
-- 1.统计该企业员工数量：
select count(*) FROM emp;

-- 2.统计该企业员工的平均年龄；
select avg(emp.age) FROM emp;

-- 3.统计该企业员工的最大年龄：
select max(emp.age) FROM emp;

-- 4.统计该企业员工最小年龄：
select min(emp.age) FROM emp;

-- 5.统计西安地区员工的年龄之和：
select avg(age) FROM emp
WHERE workaddress = '西安';

-- 分组查询group by：
-- 1.根据性别分组，统计男性员工和女性员工的数量：
select gender,count(*) FROM emp
GROUP BY gender;

-- 2.根据性别分组，统计男性员工和女性员工的平均年龄：
select gender,AVG(age) FROM emp
GROUP BY gender;

-- 3.查询年龄小于45的员工，并根据工作地址分组，获取员工数量大于等于3的工作地址：
select emp.workaddress,count(*) AS address_count FROM emp
WHERE age < 45 GROUP BY workaddress HAVING address_count >= 3 ;

-- 4.统计各个工作地址上班的男性及女性员工的数量：
select emp.gender,count(*) FROM emp
GROUP BY gender,workaddress;

-- 排序查询 order by：
-- 1.根据年龄对公司的员工进行升序排序：
select * FROM emp
ORDER BY age ASC;

-- 2.根据入职时间，对员工进行降序排序：
select * FROM emp
ORDER BY entrydate DESC;

-- 3.根据年龄对公司的员工进行升序排序，年龄相同，在按照入职时间进行降序排序：
select * FROM emp
ORDER BY age ASC,entrydate DESC;

-- 分页查询：
-- 1.查询第一页员工数据，每页展示10条记录：
select * FROM emp
LIMIT 0,10;

-- 2.查询第二页员工数据，每页展示10条记录： 其实索引：（开始页码-1）*每页展示的记录数
select * FROM emp
LIMIT 10,10;

-- DQL语句练习：
-- 1.查询年龄为20、21、22、23岁的女性员工信息：
select * FROM emp
WHERE gender= '女' AND age IN (20,21,22,23);

-- 2.查询性别为男，并且年龄在20-40岁（含）以内的姓名为三个字的员工：
SELECT * FROM emp
WHERE gender = '男' AND (age BETWEEN 20 AND 40) AND name LIKE '___';

-- 3.统计员工表中，年龄小于60岁的男性员工和女性员工人数：
SELECT gender,count(*) FROM emp
WHERE age < 60 GROUP BY gender;

-- 4.查询所有年龄小于等于35岁员工的姓名和年龄，并对查询结果按照年龄升序排序，如果年龄相同，按照入职时间降序排序：
SELECT name,age FROM emp
WHERE age <= 35 ORDER BY age ASC,entrydate DESC;

-- 5.查询性别为男，且年龄在20-40岁（含）以内的前5个员工信息，对查询结果按照年龄升序排序，年龄相同按入职时间升序排序：
SELECT * FROM emp
WHERE gender = '男' AND age BETWEEN 20 AND 40 ORDER BY age ASC,entrydate ASC LIMIT 5;


-- -----------------------------------------------------------------------------------------------

-- DDL数据控制语言：
-- 管理用户：
-- 查询用户都有哪些：查询用户：use mysql； select * from user；
select * from user;
use mysql;

-- -----------------------------------------------------------环境报错，数据库创建不了的办法
-- 第一步：保险起见，先执行删除，不管它存不存在
DROP USER IF EXISTS 'itcast'@'localhost';

-- 第二步：刷新权限（这是最关键的，清空 MySQL 的缓存“大脑”）
FLUSH PRIVILEGES;
-- ------------------------------------------------------------

-- 创建用户itcast，只能够当前主机localhost访问，密码为123456:
CREATE USER 'itcast'@'localhost' IDENTIFIED BY '123456';

-- 给创建的用户：  创建身份但是还没有授权访问权限
CREATE USER 'heima'@'%' IDENTIFIED BY '123456';

-- 修改用户heima的访问密码为1234:
alter user 'heima'@'%' identified with mysql_native_password by '1234';

-- 删除itcast@locahost用户：
DROP USER 'itcast'@'localhost';

-- 权限控制：
