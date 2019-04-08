
<%@ page import="br.com.juscelinoapps.Estrutura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estrutura.label', default: 'Estrutura')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estrutura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estrutura" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="caminhoImagem" title="${message(code: 'estrutura.caminhoImagem.label', default: 'Caminho Imagem')}" />
					
						<g:sortableColumn property="caminhoImagemMenu" title="${message(code: 'estrutura.caminhoImagemMenu.label', default: 'Caminho Imagem Menu')}" />
					
						<g:sortableColumn property="custoBarro" title="${message(code: 'estrutura.custoBarro.label', default: 'Custo Barro')}" />
					
						<g:sortableColumn property="custoCereal" title="${message(code: 'estrutura.custoCereal.label', default: 'Custo Cereal')}" />
					
						<g:sortableColumn property="custoFerro" title="${message(code: 'estrutura.custoFerro.label', default: 'Custo Ferro')}" />
					
						<g:sortableColumn property="custoMadeira" title="${message(code: 'estrutura.custoMadeira.label', default: 'Custo Madeira')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estruturaInstanceList}" status="i" var="estruturaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estruturaInstance.id}">${fieldValue(bean: estruturaInstance, field: "caminhoImagem")}</g:link></td>
					
						<td>${fieldValue(bean: estruturaInstance, field: "caminhoImagemMenu")}</td>
					
						<td>${fieldValue(bean: estruturaInstance, field: "custoBarro")}</td>
					
						<td>${fieldValue(bean: estruturaInstance, field: "custoCereal")}</td>
					
						<td>${fieldValue(bean: estruturaInstance, field: "custoFerro")}</td>
					
						<td>${fieldValue(bean: estruturaInstance, field: "custoMadeira")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estruturaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
