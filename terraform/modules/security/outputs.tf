output "jenkins_sg_id" {
  value = aws_security_group.jenkins.id
}
 
output "sonarqube_sg_id" {
  value = aws_security_group.sonarqube.id
}
 
output "nexus_sg_id" {
  value = aws_security_group.nexus.id
}
 
output "docker_sg_id" {
  value = aws_security_group.docker.id
}
