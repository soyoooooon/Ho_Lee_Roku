
const gulp = require("gulp");
const sass = require ("gulp-sass");
const postcss = require("gulp-postcss");
const nano = require("cssnano");


function compile(done) {
    gulp.src("sass/*.scss")
    .pipe(sass())
    .on("error", sass.logError)
    .pipe(postcss([nano()]))
    .pipe(gulp.dest("public/css"))
    done()
}


exports.compile = compile;