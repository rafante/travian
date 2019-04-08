package br.com.juscelinoapps

class Estrutura {
    String nome
    String descricao
    long tempConstrucao
    int custoMadeira
    int custoBarro
    int custoCereal
    int custoFerro
    String caminhoImagemMenu
    String caminhoImagem
    TipoEstrutura tipo

    static constraints = {
    }

    static mapping = {
        descricao(type: 'text')

    }
}

enum TipoEstrutura{
    RECURSO,MILITAR,INFRAESTRUTURA
}
