# struts2Oracle
struts2开发学生成绩管理系统，使用oracle数据库

## 性别字段长度由2变为3，因为在utf-8编码中，中文汉字虽然占两个字节，但是实际长度多出一个字节

## 在执行execute的时候如果可能出现阻塞，发现是commit的原因，在终端中执行了dml语句，但是没有commit，这时候再继续通过浏览器提交数据的时候，StudentJdbc在执行execute的时候会阻塞，并且没有任何异常抛出，程序也不会停止。需要释放oracle锁，在终端执行下commit。
