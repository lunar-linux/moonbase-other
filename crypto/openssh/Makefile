.PHONY: usage
.SUFFIXES: .key .csr .crt .pem
.PRECIOUS: %.key %.csr %.crt %.pem

usage:
	@echo "This makefile allows you to create:"
	@echo "  o ssh v1 server key pairs"
	@echo "  o ssh v2 dsa server key pairs"
	@echo "  o ssh v2 rsa server key pairs"
	@echo "  o public/private key pairs"
	@echo ""
	@echo "To create all server key pairs, run \"make server-keys\"."
	@echo ""
	@echo "To create a public/private key pair, run \"make SOMENAME.key\""
	@echo
	@echo
	@echo Examples:
	@echo "  make private.key"
	@echo "  make server-keys"

%.key:
	umask 77 ; \
	ssh-keygen -t dsa -f $@

ssh_host_dsa_key:
	umask 77 ; \
	ssh-keygen -t dsa -f ssh_host_dsa_key

ssh_host_rsa_key:
	umask 77 ; \
	ssh-keygen -t rsa -f ssh_host_rsa_key

ssh_host_key:
	umask 77 ; \
	ssh-keygen -t rsa1 -f ssh_host_key

server-keys: ssh_host_key ssh_host_rsa_key ssh_host_dsa_key

