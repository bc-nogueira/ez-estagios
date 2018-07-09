# Cria uma empresa nova, com sua conta
sti = Empresa.new({ nome: 'STI', cnpj: '111111', endereco: 'Valonguinho' })
Account.create({ email: 'sti@gmail.com', password: '123456', perfil: sti })

uff = Empresa.new({ nome: 'UFF', cnpj: '222222', endereco: 'Reitoria', validada: true })
Account.create({ email: 'uff@gmail.com', password: '123456', perfil: uff })

guanabara = Empresa.new({ nome: 'Guanabara', cnpj: '333333', endereco: 'Niteroi', validada: false })
Account.create({ email: 'guanabara@gmail.com', password: '123456', perfil: guanabara })

# Cria um coordenador com sua conta
coord = Coordenador.new(curso: 'Sistemas de Informação')
pessoa1 = Pessoa.new({ nome: 'Breno', cpf: '11111111111', papel: coord })
Account.create({ email: 'breno@gmail.com', password: '123456', perfil: pessoa1 })

# Cria um aluno com sua conta
aluno = Aluno.new({ matricula: '115083001', periodo: 5 })
pessoa2 = Pessoa.new({ nome: 'Romulo', cpf: '44444444444', papel: aluno })
Account.create({ email: 'romulo@gmail.com', password: '123456', perfil: pessoa2 })