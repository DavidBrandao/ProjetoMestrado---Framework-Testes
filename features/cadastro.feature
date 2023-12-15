#language:pt
Funcionalidade: Cadastro de Usuário
    Como um novo visitante da Usina PE
    Preciso criar um novo usuário
    Para que eu possa realizar e sugerir desafios

    @cadastro 
    Cenário: Cadastrar novo usuário
        Dado que a página da Usina PE seja acessada
        Quando a tela de cadastro é acessada
        E um novo usuário é cadastrado
        Então o usuário deverá ser cadastrado com sucesso

    @teste1
    Esquema do Cenário: exemplo
        Dado que a página da Usina PE seja acessada
        Quando a tela de cadastro é acessada
        E o name <name> e o username <username> é cadastrado
        Então o name e username corretos devem ser <expected_name> e <expected_username>

        Exemplos:
        |name       |username   | expected_name | expected_username |
        |"Diego"    |"Claudio"  |"Diego"        |"Claudio"          |
        |"David"    |"Lucas"    |"David"        |"Lucas"            |

    @cadastro2
    Cenário: Cadastrar novo usuário
        Dado que a página da Usina PE seja acessada
        Quando a tela de cadastro é acessada
        Então posso cadastrar "David" com username "Dbrand99"
        E email "david@gmail.com"

    @cadastro3
    Cenário: Cadastrar novo usuário
        Dado que a página da Usina PE seja acessada
        Quando a tela de cadastro é acessada
        Então posso cadastrar um usuário com os dados

    @cadastro4
    Esquema do Cenário: Cadastrar novos usuários
        Dado que a página da Usina PE seja acessada
        Quando a tela de cadastro é acessada
        Então posso cadastrar <nome> com username <username>
        E email <email>

        Exemplos:
        | nome    | username  | email             |
        | "David" | "D99Avid" | "abcde@gmail.com" |
        | "XPTO"  | "X4PT9O"  | "XPTOP@gmail.com" |
        

    
