<%@ page language="java" import="java.util.*,entity.*,dao.*,dao.impl.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	TopicDao topicDao = new TopicDaoImpl();
	ReplyDao replyDao = new ReplyDaoImpl();
	UserDao userDao = new UserDaoImpl();
	int boardId = 9;
	int p = 1;
	List listTopic = topicDao.findListTopic(p,boardId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帖子列表</title>
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 1px;
	top: 1px;
	width: 800px;
	height: 50px;
	z-index: 1;
	font-size: 36px;
	text-align: center;
	color: #C00;
}
#apDiv2 {
	position: absolute;
	left: 1px;
	top: 51px;
	width: 800px;
	height: 25px;
	z-index: 2;
	background-color: #CCFFFF;
}
#apDiv3 {
	position: absolute;
	left: 1px;
	top: 76px;
	width: 800px;
	height: 35px;
	z-index: 3;
}
#apDiv4 {
	position: absolute;
	left: 1px;
	top: 111px;
	width: 800px;
	height: 345px;
	z-index: 4;
}
</style>
</head>

<body>
<div id="apDiv1">校园BBS系统</div>
<div id="apDiv2">您尚未<a href="login.html">登录</a>|<a href="reg.html">注册</a></div>
<div id="apDiv3">&gt;&gt;<a href="index.html">论坛首页</a>&gt;&gt;<a href="detail.html">灌水乐园</a></div>
<div id="apDiv4">
  <form id="form1" name="form1" method="post" action="">
    <p>
      <input type="submit" name="button" id="button" value="发表话题" />
    </p>
    <p>上一页|下一页  </p>
    <table width="800" border="1">
      <tr>
        <td>&nbsp;</td>
        <td>文章</td>
        <td>作者</td>
        <td>回复</td>
      </tr>
      <%
      	for(int i =0;i<listTopic.size();i++){
      	Topic topic = (Topic)listTopic.get(i);
      	User user = userDao.findUser(topic.getUid());
      	}
       %>
      <tr>
        <td>&nbsp;</td>
        <td>1</td>
        <td>user1</td>
        <td>2</td>
      </tr>
      
    </table>
    <p>上一页|下一页 </p>
  </form>
</div>
</body>
</html>
