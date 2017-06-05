# stu

1、数据表信息

用户信息

id
user_name
passwd
user_type
create_time
is_delete
login_time


添加数据

INSERT INTO user_info (user_name, passwd, user_type, create_time ) value ('admin@zzxtit.com', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1, NOW())

定义用户实体类

定义学生信息
id  
stu_no 学生编号
stu_name
gender
birthday
email
tel_num   电话号码
class_id
university
memo

学生成绩表   stu_score
id
stu_no
course
score
memo

班级信息

dic 字典表
1、ID
2、字典类型     dic_type
3、Name  data_name
4、Code  data_code
5、备注           memo
6、状态           state
7、修改时间  update_time
8、修改人      update_person



