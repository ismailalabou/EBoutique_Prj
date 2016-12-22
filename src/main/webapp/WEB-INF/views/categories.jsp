<head>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style1.css">
</head>

<div class="errors">
	${ exception }
</div>

<div id="formcat" class="cadre">
	<f:form modelAttribute="categorie" action="saveCat" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>ID Catégorie</td>
				<td><f:input path="idCategorie"/></td>
				<td><f:errors path="idCategorie" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Nom Catégorie</td>
				<td><f:input path="nomCategorie"/></td>
				<td><f:errors path="nomCategorie" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><f:textarea path="description"/></td>
				<td><f:errors path="description" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Photo</td>
				
				<td>
				<c:if test="${ categorie.idCategorie!=null }">
				  <img src="photoCat?idCat=${ categorie.idCategorie }" height="42" width="42" /> 
				</c:if>
				</td>
				<td>
				<input type="file" name="file"/>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Save"/></td>
			</tr>
		</table>
	</f:form>
	<div id="tabCategories" class="cadre">
		<table class="tab1">
			<tr>
				<th>ID</th><th>Nom Catégorie</th><th>Description</th><th>Photo</th>
			</tr>
			<c:forEach items="${ categories }" var="cat">
				<tr>
					<td>${ cat.idCategorie }</td>
					<td>${ cat.nomCategorie }</td>
					<td>${ cat.description }</td>
 					<td><img src="photoCat?idCat=${ cat.idCategorie }" height="200" width="200" /></td> 
                    <td><a href="suppCat?idCat=${ cat.idCategorie }">Supprimer</a></td>
                    <td><a href="editCat?idCat=${ cat.idCategorie }">Editer</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>