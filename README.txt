Before running:

	export AWS_ACCESS_KEY_ID='AK123'
	export AWS_SECRET_ACCESS_KEY='abc123'

Run:

	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts main.yml