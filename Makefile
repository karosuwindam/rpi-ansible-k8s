HOSTS := inventory/hosts
ANSIBLE_CMD := ANSIBLE_STDOUT_CALLBACK=yaml ANSIBLE_LOG_PATH=logs/install.`date +%Y%m%d%H%M%S`.log ansible-playbook -i ${HOSTS}

kubernetes2:
	$(ANSIBLE_CMD) kubernetes2.yml
kubernetes:
	$(ANSIBLE_CMD) kubernetes.yml
kubernetes-ubuntu:
	$(ANSIBLE_CMD) kubernetes-ubuntu.yml
containerd:
	$(ANSIBLE_CMD) containerd.yml
oscheck:
	$(ANSIBLE_CMD) check.yml
go:
	$(ANSIBLE_CMD) go.yml
docker:
	$(ANSIBLE_CMD) docker.yml
crio:
	$(ANSIBLE_CMD) crio.yml
buildkit:
	$(ANSIBLE_CMD) buildkit.yml
