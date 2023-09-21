REPO_URL := 10.15.16.100:5000
IMAGE_NAME := pyess
IMAGE_TAG := latest

docker:
	docker image build -t $(IMAGE_NAME) . --progress=plain

push: docker
	docker image tag $(IMAGE_NAME) $(REPO_URL)/$(IMAGE_NAME):$(IMAGE_TAG)
	docker image push $(REPO_URL)/$(IMAGE_NAME):$(IMAGE_TAG)