Jem.init 'http://localhost:3000'

# throw error outside of spec blocks so Jasmine doesn't catch it
throwError = -> 
  throw new Error

setTimeout throwError, 1

describe 'Dummy', ->
  it 'should fail this test', ->
    # expect(false).toBeTruthy()