# Cria empresas novas em diferentes estados de validações, com suas contas
sti = Empresa.new({ nome: 'STI', cnpj: '111111', endereco: 'Valonguinho' })
Account.create({ email: 'sti@gmail.com', password: '123456', perfil: sti })

uff = Empresa.new({ nome: 'UFF', cnpj: '222222', endereco: 'Reitoria',
                    validada: true })
Account.create({ email: 'uff@gmail.com', password: '123456', perfil: uff })

guanabara = Empresa.new({ nome: 'Guanabara', cnpj: '333333',
                          endereco: 'Niteroi', validada: false })
Account.create({ email: 'guanabara@gmail.com', password: '123456',
                 perfil: guanabara })

visagio = Empresa.new({ nome: 'Visagio', cnpj: '4444444',
                        endereco: 'Rio de Janeiro', validada: true })
Account.create({ email: 'visagio@gmail.com', password: '123456',
                 perfil: visagio })

# Cria um coordenador com sua conta
coord = Coordenador.new(curso: 'Sistemas de Informação')
viterbo = Pessoa.new({ nome: 'Viterbo', cpf: '11111111111', papel: coord })
Account.create({ email: 'viterbo@gmail.com', password: '123456',
                 perfil: viterbo })

# Cria alunos em diferentes estados de validações, com suas contas
aluno1 = Aluno.new({ matricula: '115083001', periodo: 7 })
breno = Pessoa.new({ nome: 'Breno', cpf: '22222222222', papel: aluno1 })
Account.create({ email: 'breno@gmail.com', password: '123456',
                 perfil: breno })

aluno2 = Aluno.new({ matricula: '114083001', periodo: 9, validado: false })
gabriel = Pessoa.new({ nome: 'Gabriel', cpf: '33333333333', papel: aluno2 })
Account.create({ email: 'gabriel@gmail.com', password: '123456',
                 perfil: gabriel })

aluno3 = Aluno.new({ matricula: '116083001', periodo: 5, validado: true })
romulo = Pessoa.new({ nome: 'Romulo', cpf: '44444444444', papel: aluno3 })
Account.create({ email: 'romulo@gmail.com', password: '123456',
                 perfil: romulo })

# Cria vaga para empresa
vaga1 = Vaga.create(empresa_id: sti.id, titulo: 'Desenvolvedor Java',
            descricao: "- Noções de programação em Java \n - Bolsa: R$ 800,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga2 = Vaga.create(empresa_id: sti.id, titulo: 'Desenvolvedor Ruby',
            descricao: "- Noções de programação em Ruby \n - Bolsa: R$ 900,00",
            validada: false, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga3 = Vaga.create(empresa_id: uff.id, titulo: 'Desenvolvedor Ruby',
            descricao: "- Noções de programação em Ruby \n - Bolsa: R$ 1000,00",
            validada: false, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

Vaga.create(empresa_id: guanabara.id, titulo: 'Desenvolvedor Ruby',
            descricao: "- Noções de programação em Ruby \n - Bolsa: R$ 700,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

# Cria habilidades

habilidade1 = Habilidade.create(nome: 'MySQL',
                                descricao: 'Banco de Dados Relacional')
habilidade2 = Habilidade.create(nome: 'Ruby on Rails',
                                descricao: 'Framework em Ruby')
habilidade3 = Habilidade.create(nome: 'Design Patterns',
                  descricao: 'Conhecimento dos Padrões de Projeto')
Habilidade.create(nome: 'HTML', descricao: 'Linguagem de marcação para web')
Habilidade.create(nome: 'Javascript',
                  descricao: 'Linguagem de scripts para web')
Habilidade.create(nome: 'CSS', descricao: 'Mecanismo de estilos para web')


# Cria Habilidade para um vaga
# niveis: 0 - basico, 1 - intermediario, 2 - avancado

VagaHabilidade.create(vaga_id: vaga1.id, habilidade_id: habilidade1, nivel: 0)
VagaHabilidade.create(vaga_id: vaga2.id, habilidade_id: habilidade2, nivel: 1)
VagaHabilidade.create(vaga_id: vaga3.id, habilidade_id: habilidade3, nivel: 2)
