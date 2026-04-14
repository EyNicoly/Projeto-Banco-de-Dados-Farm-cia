erDiagram
    MATRIZ ||--|{ FILIAL : "possui"
    MATRIZ ||--|| ESTOQUE : "tem"
    FABRICANTE ||--|{ PRODUTO : "produz"
    FORNECEDOR ||--o{ PRODUTO : "vende"
    PRODUTO ||--o{ MOVIMENTACAO_ESTOQUE : "relaciona"
    PRODUTO ||--o| DROGARIA : "especializa"
    PRODUTO ||--o| PERFUMARIA : "especializa"
    FUNCIONARIO ||--o{ MOVIMENTACAO_ESTOQUE : "registra"
    FUNCIONARIO ||--o{ COMPRA : "atende"
    COMPRA ||--o{ ITEM_VENDA : "contem"
    ITEM_VENDA }|--|| PRODUTO : "inclui"
    CLIENTE ||--o{ COMPRA : "realiza"
    CONVENIO ||--o{ COMPRA : "cadastrado"
    COMPRA ||--o| PRESENCIAL : "e"
    COMPRA ||--o| ON_LINE : "e"
    ON_LINE ||--o{ ENTREGA : "gera"
    COMPRA ||--o| RECEITA : "exige"
    RECEITA }|--|| ANVISA : "monitora"
    FUNCIONARIO ||--o{ SERVICOS : "presta"

    ON_LINE {
        int ID_Compra PK
        string QR_Code
        string Origem
        string Cupom_Desconto
        string Hash_Transacao
        datetime Data_Hora_Aprovacao
        string Status_Pagamento
    }

    PRESENCIAL {
        int ID_Caixa PK
        int N_Caixa
        int ID_Compra FK
    }

    ENTREGA {
        int ID_Entrega PK
        string Status_Entrega
        float Taxa_Entrega
        datetime Data_Hora_Saida
        datetime Data_Hora_Chegada
        string Codigo_Rastreio
    }

    SERVICOS {
        int ID_Servico PK
        string Nome_Servico
        string Descricao
        float Preco_Servico
        string Requisitos_Receita
    }

    ITEM_VENDA {
        int QTD
        float Preco_unidade
        float Desconto_Item
        string Lote_Venda
    }

    ESTOQUE {
        int Id_Produto PK
        string Nome_Produto
        int Quantidade_atual
        string Localizacao
        date Data_de_Entrada
        date Data_de_Validade
    }

    %% Outras entidades para manter a integridade
    PRODUTO {
        int id_produto PK
        string nome
    }
    COMPRA {
        int id_compra PK
        float valor_total
    }