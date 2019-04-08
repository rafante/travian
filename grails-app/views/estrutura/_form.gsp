<%@ page import="br.com.juscelinoapps.Estrutura" %>


<g:img dir="images" file="${estruturaInstance.caminhoImagemMenu}"/>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'caminhoImagem', 'error')} ">
    <label for="caminhoImagem">
        <g:message code="estrutura.caminhoImagem.label" default="Caminho Imagem"/>

    </label>
    <g:textField name="caminhoImagem" value="${estruturaInstance?.caminhoImagem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'caminhoImagemMenu', 'error')} ">
    <label for="caminhoImagemMenu">
        <g:message code="estrutura.caminhoImagemMenu.label" default="Caminho Imagem Menu"/>

    </label>
    <g:textField name="caminhoImagemMenu" value="${estruturaInstance?.caminhoImagemMenu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'custoBarro', 'error')} required">
    <label for="custoBarro">
        <g:message code="estrutura.custoBarro.label" default="Custo Barro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="custoBarro" type="number" value="${estruturaInstance.custoBarro}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'custoBarro', 'error')} required">
    <label for="custoBarro">
        <g:message code="estrutura.custoBarro.label" default="Custo Barro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="tipo" from="${br.com.juscelinoapps.TipoEstrutura.values()}" noSelection="['':'']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'custoCereal', 'error')} required">
    <label for="custoCereal">
        <g:message code="estrutura.custoCereal.label" default="Custo Cereal"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="custoCereal" type="number" value="${estruturaInstance.custoCereal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'custoFerro', 'error')} required">
    <label for="custoFerro">
        <g:message code="estrutura.custoFerro.label" default="Custo Ferro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="custoFerro" type="number" value="${estruturaInstance.custoFerro}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'custoMadeira', 'error')} required">
    <label for="custoMadeira">
        <g:message code="estrutura.custoMadeira.label" default="Custo Madeira"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="custoMadeira" type="number" value="${estruturaInstance.custoMadeira}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'descricao', 'error')} ">
    <label for="descricao">
        <g:message code="estrutura.descricao.label" default="Descricao"/>

    </label>
    <g:textArea name="descricao" value="${estruturaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'nome', 'error')} ">
    <label for="nome">
        <g:message code="estrutura.nome.label" default="Nome"/>

    </label>
    <g:textField name="nome" value="${estruturaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estruturaInstance, field: 'tempConstrucao', 'error')} required">
    <label for="tempConstrucao">
        <g:message code="estrutura.tempConstrucao.label" default="Temp Construcao"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="tempConstrucao" type="number" value="${estruturaInstance.tempConstrucao}" required=""/>
</div>

