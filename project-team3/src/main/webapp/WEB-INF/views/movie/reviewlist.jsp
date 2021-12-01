<c:forEach var="i" items="${ reviewlist }">
	<tr>
		<td class="reviewtext">${ i.review }</td>
		<td>${ i.member_id }</td>
		<td><fmt:formatDate value="${ i.regdate }" pattern="yyyy-MM-dd HH:MM" /></td>
		<c:if test="${ sessionScope.loginuser.memberId eq i.member_id }">
		<td><a href="javascript:deletereview();" ><i class="material-icons">delete_sweep</i></a></td>
		</c:if>
	</tr>
</c:forEach>