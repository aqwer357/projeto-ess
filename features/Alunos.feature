Scenario: Importação de alunos a partir de uma planilha como a de Nomes e Logins
    Given estou logado como “Professor”
    And estou na página “importar alunos de planilha”
    When adiciono um arquivo “alunos.xlsx” que contém nomes e logins dos alunos a serem importados
    And confirmo o envio da planilha
    Then os alunos contidos na planilha são registrados na turma

Scenario: Falha ao tentar importar a partir de uma planilha que não contem alunos ou formatação incorreta
    Given estou logado como “Professor”
    And estou na página “importar alunos de planilha”
    When adiciono um arquivo “alunos.xlsx” que não contem alunos ou possui formatação incorreta
    Then a página exibe a mensagem "Planilha vazia ou com formatação incorreta"
	And o sistema não altera a lista de alunos

Scenario: Falha ao adicionar arquivo no formato incorreto
    Given estou logado como “Professor”
    And estou na página “importar alunos de planilha”
    When adiciono um arquivo “alunos.123” que contém nomes e logins dos alunos a serem importados
    And confirmo o envio da planilha
    Then a página exibe a mensagem "Formato de arquivo incorreto"
	And o sistema não altera a lista de alunos
