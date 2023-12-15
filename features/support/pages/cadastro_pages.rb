class CadastroPage < SitePrism::Page
    include Capybara::DSL

    element :campoName, '#name'
    element :campoUserName, '#username'
    element :campoCPF, '#cpf'
    element :campoEmail, '#email'
    element :campoEmailSecundario, '#emailSecundary'
    element :campoPassword, '#password'
    element :campoPasswordConfirm, '#passwordConfirm'
    element :campoPhoneNumber, '#phoneNumber'

    $valor_nome_esperado = "David Brandão"

    def cadastrar_funcionario
        campoName.set("David Brandão")
        campoUserName.set("DavidFBrand")
        campoCPF.set("11935271474")
        campoEmail.set("david@gmail.com")
        campoEmailSecundario.set("david2@gmail.com")
        campoPassword.set("123456789")
        campoPasswordConfirm.set("123456789")
        campoPhoneNumber.set("912345678")
    end

    def cadastro_exemplo(name, username)
        campoName.set(name)
        campoUserName.set(username)
    end

    def get_campo_nome
        campoName.value
    end

    def get_campo_username
        campoUserName.value
    end
end