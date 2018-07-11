# Cria empresas novas em diferentes estados de validações, com suas contas
sti = Empresa.new({ nome: 'STI', cnpj: '87.854.813/0001-27', endereco: 'Valonguinho' })
Account.create({ email: 'sti@gmail.com', password: '123456', perfil: sti })

uff = Empresa.new({ nome: 'UFF', cnpj: '12.442.268/0001-62', endereco: 'Reitoria',
                    validada: true })
Account.create({ email: 'uff@gmail.com', password: '123456', perfil: uff })

guanabara = Empresa.new({ nome: 'Guanabara', cnpj: '23.162.308/0001-39',
                          endereco: 'Niteroi', validada: false })
Account.create({ email: 'guanabara@gmail.com', password: '123456',
                 perfil: guanabara })

visagio = Empresa.new({ nome: 'Visagio', cnpj: '20.970.364/0001-01',
                        endereco: 'Rio de Janeiro', validada: true })
Account.create({ email: 'visagio@gmail.com', password: '123456',
                 perfil: visagio })

stone = Empresa.new({ nome: 'Stone', cnpj: '26.388.730/0001-03',
                        endereco: 'Rio de Janeiro', validada: true })
Account.create({ email: 'stone@gmail.com', password: '123456',
                 perfil: stone })

# validadas: visagio e uff

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
vaga1 = Vaga.create(empresa_id: uff.id, titulo: 'Desenvolvedor Java',
            descricao: "- Noções de programação em Java \n - Bolsa: R$ 800,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga2 = Vaga.create(empresa_id: uff.id, titulo: 'Desenvolvedor Ruby',
            descricao: "- Noções de programação em Ruby \n - Bolsa: R$ 900,00",
            data_fim: Time.now + 2.days, data_resposta: Time.now + 4.days)

vaga3 = Vaga.create(empresa_id: visagio.id, titulo: 'Desenvolvedor C#',
            descricao: "- Noções de logica de programação \n - Bolsa: R$ 1000,00",
            validada: false, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga4 = Vaga.create(empresa_id: visagio.id, titulo: 'Desenvolvedor Web',
            descricao: "- Noções de desenvolvimento web \n - Bolsa: R$ 700,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga5 = Vaga.create(empresa_id: stone.id, titulo: 'Estágio em Engenharia de Software',
            descricao: "- Noções de Engenharia de Software \n - Bolsa: R$ 1250,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga6 = Vaga.create(empresa_id: stone.id, titulo: 'Estágio em DevOps',
            descricao: "- Conhecimento básico de Linux \n - Bolsa: R$ 1250,00",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga7 = Vaga.create(empresa_id: stone.id, titulo: 'Estágio em Desenvolvimento Web',
            descricao: "- Estágio em Web Design, Desenvolvimento de Sistemas Web \n - Bolsa: R$ 1000,00 \n - Regime de Contratação: Estágio \n - Número de Vagas: 2 \n - Responsabilidades: Atuar na criação visual de sites, \n criação e modificação de templates, layouts, site. ",
            validada: true, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

vaga8 = Vaga.create(empresa_id: stone.id, titulo: 'Desenvolvedor Python',
            descricao: "- Conhecimento básico da Linguagem de programação Python \n - Bolsa: R$ 1250,00",
            validada: false, data_fim: Time.now + 2.days ,
            data_resposta: Time.now + 4.days)

# Cria habilidades

habilidade1 = Habilidade.create(nome: 'MySQL',
                                descricao: 'Banco de Dados Relacional')
habilidade2 = Habilidade.create(nome: 'Ruby on Rails',
                                descricao: 'Framework Web em Ruby')
habilidade3 = Habilidade.create(nome: 'Design Patterns',
                  descricao: 'Conhecimento dos Padrões de Projeto')
habilidade4 = Habilidade.create(nome: 'HTML',
descricao: 'Linguagem de marcação para web')
habilidade5 = Habilidade.create(nome: 'Javascript',
descricao: 'Linguagem de scripts para web')
habilidade6 = Habilidade.create(nome: 'CSS',
descricao: 'Mecanismo de estilos para web')
habilidade7 = Habilidade.create(nome: 'Python',
descricao: 'Mecanismo de estilos para web')
habilidade8 = Habilidade.create(nome: 'Python',
descricao: 'Linguagem de Programação')
habilidade9 = Habilidade.create(nome: 'Linux',
descricao: 'Sistema Operacional')


# Cria Habilidade para um vaga
# niveis: 0 - basico, 1 - intermediario, 2 - avancado

VagaHabilidade.create(vaga_id: vaga1.id, habilidade_id: habilidade1.id, nivel: 0)
VagaHabilidade.create(vaga_id: vaga1.id, habilidade_id: habilidade3.id, nivel: 0)

VagaHabilidade.create(vaga_id: vaga2.id, habilidade_id: habilidade2.id, nivel: 1)

VagaHabilidade.create(vaga_id: vaga3.id, habilidade_id: habilidade3.id, nivel: 2)

VagaHabilidade.create(vaga_id: vaga4.id, habilidade_id: habilidade4.id, nivel: 2)
VagaHabilidade.create(vaga_id: vaga4.id, habilidade_id: habilidade5.id, nivel: 1)
VagaHabilidade.create(vaga_id: vaga4.id, habilidade_id: habilidade6.id, nivel: 1)

VagaHabilidade.create(vaga_id: vaga5.id, habilidade_id: habilidade3.id, nivel: 0)

VagaHabilidade.create(vaga_id: vaga6.id, habilidade_id: habilidade9.id, nivel: 0)

VagaHabilidade.create(vaga_id: vaga7.id, habilidade_id: habilidade6.id, nivel: 1)
VagaHabilidade.create(vaga_id: vaga7.id, habilidade_id: habilidade4.id, nivel: 1)
VagaHabilidade.create(vaga_id: vaga7.id, habilidade_id: habilidade5.id, nivel: 1)

VagaHabilidade.create(vaga_id: vaga8.id, habilidade_id: habilidade8.id, nivel: 1)

# Adicionar imagem de perfil

visagio.avatar = Rails.root.join("db/seed_images/visagio.png").open
uff.avatar = Rails.root.join("db/seed_images/uff.png").open
sti.avatar = Rails.root.join("db/seed_images/sti.png").open
stone.avatar = Rails.root.join("db/seed_images/stone.png").open

visagio.save!
uff.save!
sti.save!
stone.save!
