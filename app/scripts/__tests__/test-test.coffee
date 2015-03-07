jest.dontMock('../test.coffee')
test = require "../test.coffee"

describe "test", ->
  it "returns false when passed true", ->
    expect(test true).toBe false
  it "returns true when passed false", ->
    expect(test false).toBe true
