Scenario: Importação de alunos a partir de uma planilha como a de Nomes e Logins
    Given estou logado como “Professor”
    And estou na página “importar alunos de planilha”
    When adiciono um arquivo “alunos.xlsx” que contém nomes e logins dos alunos a serem importados
    And confirmo o envio da planilha
    Then os alunos contidos na planilha são registrados na turma
