# Cria uma empresa nova, com sua conta
empresa = Empresa.new({ nome: 'STI', cnpj: '111111', endereco: 'Rua Um' })
Account.create({ email: 'sti@gmail.com', password: '123456', perfil: empresa })

# Cria um coordenador com sua conta
coord = Coordenador.new(curso: 'Sistemas de Informação')
pessoa = Pessoa.new({ nome: 'Breno', cpf: '11111111111', papel: coord })
Account.create({ email: 'breno@gmail.com', password: '123456', perfil: pessoa })