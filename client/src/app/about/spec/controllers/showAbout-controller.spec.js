'use strict';
describe('Controller: showAboutCtrl', function () {
// load the controller's module
  beforeEach(module('dcollective'));
  var showAboutCtrl,
      scope;
// Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    showAboutCtrl = $controller('showAboutCtrl', {
      $scope: scope
    });
  }));
  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
