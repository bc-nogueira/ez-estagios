empresa = Empresa.new({ nome: 'STI', cnpj: '111111', endereco: 'Rua Um' })
Account.create({ email: 'sti@gmail.com', password: '123456', perfil: empresa })
