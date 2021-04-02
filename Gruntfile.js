const globAll = "{*,.*,**/*}";
const pursAll = "find {src,test} -name '*.purs' -type f";

const mainModule = "Env";

const exec = {
  build: `spago bundle-module --main ${mainModule} --to dist/bundle.js`,
  cspell: `npx cspell -c .cspell.json '${globAll}'`,
  purty: `${pursAll} | xargs -n 1 npx purty --write`,
  quickdocs: "quickdocs .quickdocs.yml",
  remark: "npx remark -r .remarkrc .",
  sphinx: "sphinx-build docs build",
  tests: "spago test",
};

module.exports = function (grunt) {
  grunt.initConfig({ exec });
  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask("lint", ["exec:cspell", "exec:remark"]);
  grunt.registerTask("format", "exec:purty");

  grunt.registerTask("tests:unit", "exec:tests");
  grunt.registerTask("build", "exec:build");

  grunt.registerTask("docs:generate", "exec:quickdocs");
  grunt.registerTask("docs:build", "exec:sphinx");

  grunt.registerTask("precommit", ["lint", "tests:unit", "docs:generate"]);
};
