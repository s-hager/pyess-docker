REPO_URL := <your_docker_repository>
IMAGE_NAME := pyess
IMAGE_TAG := latest

docker:
	docker image build -t $(IMAGE_NAME) .

push: docker
	docker image tag $(IMAGE_NAME) $(REPO_URL)/$(IMAGE_NAME):$(IMAGE_TAG)
	docker image push $(REPO_URL)/$(IMAGE_NAME):$(IMAGE_TAG)
	docker update --restart=always [$(IMAGE_NAME)]