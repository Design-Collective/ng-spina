'use strict';
describe('Directive: loader', function () {
// load the directive's module
  beforeEach(module('dcollective'));
  var element,
    scope;
  beforeEach(inject(function ($rootScope) {
    scope = $rootScope.$new();
  }));
  it('should make hidden element visible', inject(function ($compile) {
    expect(element.text()).toBe('this is the loader directive');
  }));
});
