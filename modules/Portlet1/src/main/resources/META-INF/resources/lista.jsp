<%@include file="init.jsp" %>


<portlet:renderURL var ="edit">
	<portlet:param name="jspPage" value="/edit.jsp" />
</portlet:renderURL>

<form>

</form>

<h1>Lista Facturas</h1>

<p>
	<a href='<portlet:renderURL/>'>Volver</a>
</p>
	<div class ="row">
		<div class ="col-sm-3" style="background-color:lavender;">Num.</div>
		<div class ="col-sm-3" style="background-color:lavender;">Cliente.</div>
		<div class ="col-sm-3" style="background-color:lavender;">Importe.</div>
		<div class ="col-sm-3" style="background-color:lavender;">Edit</div>
	</div>
	
	<c:forEach var ='factura' items='${facturas}'>
		<portlet:renderURL var ="edit">
			<portlet:param name="jspPage" value="/edit.jsp" />
			<portlet:param name="num" value="${factura.num}"/>
			<portlet:param name="cliente" value="${factura.cliente}"/>
			<portlet:param name="importe" value="${factura.importe}"/>				
		</portlet:renderURL>
		
		
		<div class ="row">
		<div class ="col-sm-3" style="background-color:honeydew;">${factura.num}</div>
		<div class ="col-sm-3" style="background-color:honeydew;">${factura.cliente}</div>
		<div class ="col-sm-3" style="background-color:honeydew;">${factura.importe}</div>
		<div class="col-sm-3" style="background-color:honeydew;role="button"><a href="${edit}">EDIT</a></div>
		</div>
	 </c:forEach>
	 
	 <div style='margin-top: 15px;'>
	 	<portlet:resourceURL var="exportCSV" />
	 	<a href='${exportCSV}'> Export CSV</a>
	 </div>
	 