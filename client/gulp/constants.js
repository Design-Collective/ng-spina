var gulp = require('gulp');
var ngConstant = require('gulp-ng-constant');
var path = require('path');
var conf = require('./conf');

gulp.task('constants', function () {
  return gulp.src('env.constants.json')
    .pipe(ngConstant())
    .pipe(gulp.dest(path.join(conf.paths.tmp,'serve/app/')));
});