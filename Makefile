help:
	@echo "-------------------------------------------------------------------------------------------"
	@echo "----------------------------------- COMANDOS DO PROJETO -----------------------------------"
	@echo "-------------------------------------------------------------------------------------------"
	@echo "# make build-image     =====>> Gera a imagem docker do projeto"
	@echo "# make push-image      =====>> Envia a imagem docker para o repositório de imagens"

build-image: 
ifndef IMAGE_NAME
	$(error IMAGE_NAME is not set)
endif
ifndef TAG
	$(error TAG is not set)
endif
	docker build . -t ruanlas/$(IMAGE_NAME):$(TAG)

push-image: build-image
	docker push ruanlas/$(IMAGE_NAME):$(TAG)