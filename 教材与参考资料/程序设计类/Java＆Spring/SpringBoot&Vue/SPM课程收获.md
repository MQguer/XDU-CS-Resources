## 1、Java向MySQL数据库插入时间的两种格式

向MySQL插入时间数据，需要引入java.sql.*，可以采用Date对象或Timestamp对象

推荐后者，因为更精确，且代码更简单

但注意，不要用java.util.date的Date对象，和MySQL日期格式不匹配

```java
Timestamp current_time  = new Timestamp(System.currentTimeMillis()); // 获取当前时间

Calendar calendar = Calendar.getInstance();
Timestamp due_time = new Timestamp(calendar.get(Calendar.YEAR)-1900, calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE)+10, calendar.get(Calendar.HOUR_OF_DAY), calendar.get(Calendar.MINUTE), calendar.get(Calendar.SECOND), calendar.get(Calendar.MILLISECOND)); // 获取十天后的时间
```

```java
Calendar c = Calendar.getInstance();
c.setTimeInMillis(System.currentTimeMillis());
Date current_time = new Date(c.getTime().getTime());  // 获取当前时间

c.add(Calendar.DATE, 10);  
Date due_time = new Date(c.getTime().getTime());      // 获取十天后时间
```

## 2、Java写SQL语句，末尾一般不需要分号

和直接执行MySQL程序不同，在Java中输入和执行单条的SQL语句，一般不需要在末尾加分号

但如果是批量执行多条语句，则除了最后一条语句外的语句需要末尾加分号

```java
List<Book> LB = new ArrayList<>();
ResultSet res;
String sql = "select * from books";   // 注意没有分号，有时加上也不会出问题，但有时会报错
try {
    res = JDBCutil.stmt.executeQuery(sql);
    while (res.next()) {
         Book bo = new Book(res.getString("ISBN"), res.getString("book_name"),
                  res.getInt("book_rackNum"), res.getString("book_author"),
                  res.getString("book_publisher"), res.getString("book_classify"),
                  res.getInt("book_unborrowed"), res.getInt("book_borrowed"));
         LB.add(bo);
    }
} catch (SQLException e) {
         e.printStackTrace();
}
```

## 3、Java拼接SQL语句时，字符串需用反引号括起来

```java
List<Book> LB = new ArrayList<>();
ResultSet res;
String sql = "select * from books where ISBN = '" + ISBN + "'";  // 注意这里的`
try {
     res = JDBCutil.stmt.executeQuery(sql);
     res.next();
     Book bo = new Book(res.getString("ISBN"), res.getString("book_name"),
             res.getInt("book_rackNum"), res.getString("book_author"),
             res.getString("book_publisher"), res.getString("book_classify"),
             res.getInt("book_unborrowed"), res.getInt("book_borrowed"));
     LB.add(bo);
} catch (SQLException e) {
     e.printStackTrace();
}
```

## 4、@JsonProperty()解决前后端大小写不匹配的问题

在使用@ResponseBody的接口中，常常出现前后端大小写不匹配的情况，这是因为传递数据时，将大写开头的名称全部变成了小写，为了避免这种情况，需要使用@JsonProperty()来确定传递的参数名

但是，@JsonProperty()不应该直接用在变量声明上，如下：

```java
@JsonProperty("ISBN")
private String ISBN;
```

而应该用在该变量的GETER方法上，如下

```java
@JsonProperty("ISBN")
public String getISBN() { return ISBN; }
```

前者会导致同时传递大小写两种数据格式

此外，在部分情况下，需要用@JSONField( name = " " )实现相同的效果

## 5、GET和POST区别

https://blog.csdn.net/weixin_39646405/article/details/110989755

 ![image-20221105183207659](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20221105183207659.png)



## 6、@RequestMapping的请求方式

**@RequestMapping的请求方式**

（1）如果方法上的@RequestMapping注解没有设置method属性，则get和post请求默认都可以访问

（2）如果方法上的@RequestMapping注解设置了method属性，则只能是相应的请求方式可以访问。 

 ![img](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/3HP{A@9K@]1@E$S$8ZRF9GX.png)

 ![image-20221105183104836](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20221105183104836.png)

## 7、SSMP框架

SSM（Spring+SpringMVC+MyBatis）*框架*集由Spring、MyBatis两个开源*框架*整合而成（SpringMVC是Spring中的部分内容），常作为数据源较简单的web项目的*框架*。

SSMP = SSM+Pojo

https://blog.csdn.net/qq_38586992/article/details/117425252



## 8、MySQL判断Datetime字段为空

MySQL判断String或Datetime字段为空要用 is null ，而不是 = null，例如：

```mysql
select * from borrow_return where return_date is null order by borrow_id;
```



## 9、MySQL中的字符串和Datetime加单引号

MySQL中输入字符串或Datetime类型的常量时，需要加单引号，而输入整型或其他数字型的常量时，不需要加（但加了好像也可以）

在Java中书写Sql语句的参数时，有两种方式：拼接式和嵌入式

- 拼接式：顾名思义就是直接拼接字符串，这时String或Datetime类型的常量必须用单引号括起来，如下

  ```java
  String sql = "select * from books where ISBN = '" + ISBN + "'";
  ResultSet res = JDBCutil.stmt.executeQuery(sql);
  ```

- 嵌入式：先书写完完整的Sql语句，并用问号表示待插入的参数，这时参数均不需要加单引号，系统会自动添加，无须手动写入，如下

  ```java
  String sql = "insert into classify(classify_name) values(?)";
  PreparedStatement ps = JDBCutil.connection.prepareStatement(sql);
  ps.setString(1, classify_name);
  ps.executeUpdate();
  ```



