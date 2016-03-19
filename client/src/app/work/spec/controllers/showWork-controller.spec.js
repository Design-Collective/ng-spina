'use strict';
describe('Controller: showWorkCtrl', function () {
// load the controller's module
  beforeEach(module('dcollective'));
  var showWorkCtrl,
      scope;
// Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    showWorkCtrl = $controller('showWorkCtrl', {
      $scope: scope
    });
  }));
  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
