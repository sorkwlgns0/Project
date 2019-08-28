<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="<c:url value="/menu/add" />" method="POST" enctype="multipart/form-data" >
        <table border="1">
            <tr>
                <th>제품명</th>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <th>가격</th>
                <td><input type="text" name="price"/>원</td>
            </tr>
            <tr>
                <th>수량</th>
                <td><input type="text" name="stocks"/></td>
            </tr>
            <tr>
                <th>분류</th>
                <td><input type="radio" name="category" value="1"/>아우터
                <input type="radio" name="category" value="2"/>상의
                <input type="radio" name="categoryjavascript:void(0)" value="3"/>하의
                <input type="radio" name="category" value="4"/>양말
                <input type="radio" name="category" value="5"/>가방
                </td>
            </tr>
            <tr>
                <th>사이즈</th>
                <td><input type="radio" name="sizee" value="90"/>90
                <input type="radio" name="sizee" value="95"/>95
                <input type="radio" name="sizee" value="100"/>100
                <input type="radio" name="sizee" value="105"/>105
                <input type="radio" name="sizee" value="110"/>110
                </td>
            </tr>
            <tr>
                <th>이미지</th>
                <td><input type="file" name="image"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input name="password"></td>
        </table>
        <div>
            <input type="submit" value="등록">
            <a href="<c:url value="/menu/list"/>">목록</a>
        </div>
    </form>
</body>
</html>