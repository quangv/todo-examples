module.exports = (grunt)->
	grunt.initConfig
		connect :
			server :
				options :
					hostname : '*'
					base : 'public'
					port : 4000

		watch :
			public :
				files : 'public/**/*'
			options :
				livereload : true


	grunt.loadNpmTasks 'grunt-contrib-connect'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask 'default', ['connect', 'watch']
