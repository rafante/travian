
<%@ page import="br.com.juscelinoapps.Estrutura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estrutura.label', default: 'Estrutura')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estrutura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estrutura" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estrutura">
			
				<g:if test="${estruturaInstance?.caminhoImagem}">
				<li class="fieldcontain">
					<span id="caminhoImagem-label" class="property-label"><g:message code="estrutura.caminhoImagem.label" default="Caminho Imagem" /></span>
					
						<span class="property-value" aria-labelledby="caminhoImagem-label"><g:fieldValue bean="${estruturaInstance}" field="caminhoImagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.caminhoImagemMenu}">
				<li class="fieldcontain">
					<span id="caminhoImagemMenu-label" class="property-label"><g:message code="estrutura.caminhoImagemMenu.label" default="Caminho Imagem Menu" /></span>
					
						<span class="property-value" aria-labelledby="caminhoImagemMenu-label"><g:fieldValue bean="${estruturaInstance}" field="caminhoImagemMenu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.custoBarro}">
				<li class="fieldcontain">
					<span id="custoBarro-label" class="property-label"><g:message code="estrutura.custoBarro.label" default="Custo Barro" /></span>
					
						<span class="property-value" aria-labelledby="custoBarro-label"><g:fieldValue bean="${estruturaInstance}" field="custoBarro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.custoCereal}">
				<li class="fieldcontain">
					<span id="custoCereal-label" class="property-label"><g:message code="estrutura.custoCereal.label" default="Custo Cereal" /></span>
					
						<span class="property-value" aria-labelledby="custoCereal-label"><g:fieldValue bean="${estruturaInstance}" field="custoCereal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.custoFerro}">
				<li class="fieldcontain">
					<span id="custoFerro-label" class="property-label"><g:message code="estrutura.custoFerro.label" default="Custo Ferro" /></span>
					
						<span class="property-value" aria-labelledby="custoFerro-label"><g:fieldValue bean="${estruturaInstance}" field="custoFerro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.custoMadeira}">
				<li class="fieldcontain">
					<span id="custoMadeira-label" class="property-label"><g:message code="estrutura.custoMadeira.label" default="Custo Madeira" /></span>
					
						<span class="property-value" aria-labelledby="custoMadeira-label"><g:fieldValue bean="${estruturaInstance}" field="custoMadeira"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="estrutura.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${estruturaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="estrutura.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${estruturaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estruturaInstance?.tempConstrucao}">
				<li class="fieldcontain">
					<span id="tempConstrucao-label" class="property-label"><g:message code="estrutura.tempConstrucao.label" default="Temp Construcao" /></span>
					
						<span class="property-value" aria-labelledby="tempConstrucao-label"><g:fieldValue bean="${estruturaInstance}" field="tempConstrucao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${estruturaInstance?.id}" />
					<g:link class="edit" action="edit" id="${estruturaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
