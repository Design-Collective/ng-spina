'use strict';
describe('Controller: showProcessCtrl', function () {
// load the controller's module
  beforeEach(module('dcollective'));
  var showProcessCtrl,
      scope;
// Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    showProcessCtrl = $controller('showProcessCtrl', {
      $scope: scope
    });
  }));
  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
