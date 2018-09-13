<%@ include file="/init.jsp" %>

<%@ include file="/init.jsp" %>

<portlet:actionURL name="editarFactura" var="editarFacturaURL">
</portlet:actionURL>


<form method="post" action="${editarFacturaURL}">
	<div class="form-group">
		<label for="usr">num:</label>
		<input type="text" class="form-control" name="<portlet:namespace />num" value="${factura.num}" readonly>
	</div>
	<div class="form-group">
		<label for="usr">cliente:</label>
		<input type="text" class="form-control" name="<portlet:namespace />cliente" value="${factura.cliente}">
	</div>
	<div class="form-group">
		<label for="usr">importe:</label>
		<input type="text" class="form-control" name="<portlet:namespace />importe" value="${factura.importe}">
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>

