node {
    def app

    stage('Pull!') {
        checkout scm
    }

    stage('Build It Up!'){
        app = docker.build("trappgbv/schemaextract")
    }

    stage('Push It! (really hard)'){
        docker.withRegistry('https://registry.hub.docker.com', 'git') { 
            app.push("${env.BUILD_NUMBER}")            
            app.push("latest")
        }
    }
}