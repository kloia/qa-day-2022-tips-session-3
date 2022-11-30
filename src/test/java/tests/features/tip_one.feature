Feature: Writing JSONs as table

  Scenario:
    * def names_json = [{name: "Muhammet", skills: ["a","b"]},{name: "Gökçe", skills: ["a","b"]}, {name: "Elif", skills: ["a","b"]}]
    * table names_table
      | name       | skills    |
      | "Muhammet" | ["a","b"] |
      | "Gökçe"    | ["a","b"] |
      | "Elif"     | ["a","b"] |
    * match ({name: 'Muhammet', skills: ["a","b"]}) == {name: '#string', skills: ["a","b"]}
    * match names_json contains deep {name: '#string', skills: ["a","b"]}