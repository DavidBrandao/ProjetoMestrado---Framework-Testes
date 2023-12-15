Dado('que a página da Usina PE seja acessada') do                         
    # Acessar a página da usina PE
    visit 'https://usina.pe.gov.br/'

    # Validar o titulo da página
    expect(page.title).to include "Usina Pernambucana de Inovação"
end                                                                           
                                                                            
Quando('a tela de cadastro é acessada') do    
    # Acessar a página de cadastro                                
    visit 'https://desafios.pe.gov.br/createuser'
    
    # Validar que chegou na tela de cadastro
    expect(page.title).to include "Cadastro no sistema"
end                

Quando('um novo usuário é cadastrado') do
    # Cadastrar um funcionário
    @cadastro.cadastrar_funcionario
end
                                                                            
Então('o usuário deverá ser cadastrado com sucesso') do   
    expect(@cadastro.get_campo_nome).to eql($valor_nome_esperado)
end         

Então('posso cadastrar {string} com username {string}') do |nome, sobrenome|
    find('#name').set nome
    find('#username').set sobrenome
end

Então('email {string}') do |email|
    find('#email').set email
    sleep 10
end

Quando('um novo usuário customizado é criado') do
    @cadastro.cadastro_exemplo("Diego", "Claudio")
end

Quando('o name {string} e o username {string} é cadastrado') do |name, username|
    @cadastro.cadastro_exemplo(name, username)
end

Então('os dados devem estar corretos') do
    expect(@cadastro.get_campo_nome).to eql("Diego")
    expect(@cadastro.get_campo_username).to eql("Claudio")
end

Então('o name e username corretos devem ser {string} e {string}') do |expected_name, expected_username|
    expect(@cadastro.get_campo_nome).to eql(expected_name)
    expect(@cadastro.get_campo_username).to eql(expected_username)
end