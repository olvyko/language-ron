describe "Ron grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-ron")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.ron")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.ron"
