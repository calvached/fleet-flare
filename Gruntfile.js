'use strict';

module.exports = function (grunt) {
  require('load-grunt-tasks')(grunt);
  grunt.initConfig({
    uglify: {
      options: {
        mangle: true
      },
      dist: {
        files: {
          'dist/fleet_flare.min.js': [
            "bower_components/jquery/jquery.js",
            "bower_components/underscore/underscore.js",
            "namespace/namespace.js",
            ".tmp/lib/flash_message.js"
          ]
        }
      }
    },

    concat: {
      basic: {
        src: [
          "bower_components/jquery/jquery.js",
          "bower_components/underscore/underscore.js",
          "namespace/namespace.js",
          ".tmp/lib/flash_message.js"
        ],
        dest: 'dist/fleet_flare.js'
      }
    },

    coffee: {
      dist: {
        files: [{
          expand: true,
          cwd: 'lib',
          src: '{,*/}*.coffee',
          dest: '.tmp/lib',
          ext: '.js'
        }]
      },
      test: {
        files: [{
          expand: true,
          cwd: 'spec',
          src: '*.coffee',
          dest: '.tmp/spec',
          ext: '.js'
        }]
      }
    },

    clean: {
      all: '.tmp'
    }

  });

  grunt.registerTask('build', [
                     'clean',
                     'coffee:dist',
                     'concat',
                     'uglify'
  ]);

  grunt.registerTask('runTests', [
                     'clean',
                     'coffee:dist',
                     'coffee:test'
  ]);
};
