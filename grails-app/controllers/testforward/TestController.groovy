package testforward

import grails.converters.JSON;

class TestController {

    def index() { }
	
	def test(){		
		println "Hi!, I'm test and the params is $params"
		println "now, I'll forward to another action with params merged"
		
		forward action:"testforward", params : params + [ addparam : new Date().toString()]
	}
	
	def testforward(){
		println "Hi!, I'm testforward and the params is $params"
		println "now, I'll response the params as json"
		
		render "Hi html "
	}
}
