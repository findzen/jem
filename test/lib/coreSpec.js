// Generated by CoffeeScript 1.4.0
(function() {
  var throwError;

  Jem.init('http://localhost:3000');

  throwError = function() {
    throw new Error;
  };

  setTimeout(throwError, 1);

  describe('Dummy', function() {
    return it('should fail this test', function() {});
  });

}).call(this);