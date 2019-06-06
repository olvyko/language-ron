describe "Ron grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-ron")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.ron")
      
  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe 'source.ron'
