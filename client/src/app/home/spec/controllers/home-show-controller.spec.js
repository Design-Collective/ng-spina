'use strict';
describe('Controller: homeShowCtrl', function () {
// load the controller's module
  beforeEach(module('dcollective'));
  var homeShowCtrl,
      scope;
// Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    homeShowCtrl = $controller('homeShowCtrl', {
      $scope: scope
    });
  }));
  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
