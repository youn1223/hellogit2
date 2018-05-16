<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="java.sql.Timestamp"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="article" class="board.BoardBean">
	<jsp:setProperty name="article" property="*" />
</jsp:useBean>


<%
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());

	BoardDao dbPro = BoardDao.getInstance();

	dbPro.insertArticle(article);

	response.sendRedirect("list.jsp");
%>




