ANSIBLE_CMD := ANSIBLE_STDOUT_CALLBACK=yaml ANSIBLE_LOG_PATH=logs/install.`date +%Y%m%d%H%M%S`.log ansible-playbook -i inventory/hosts

kubernetes:
	$(ANSIBLE_CMD) kubernetes.yml
containerd:
	$(ANSIBLE_CMD) containerd.yml
