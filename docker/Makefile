all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all cogrob images"
	@echo "   1. make pull             - pull all cogrob images"
	@echo "   1. make clean            - remove all cogrob images"
	@echo ""

build:
	@docker build --tag=cogrob/omnimapper:dep dep/.
	@docker build --tag=cogrob/omnimapper:dev dev/.
	@docker build --tag=cogrob/omnimapper:gui gui/.
	@docker build --tag=cogrob/omnimapper:gtsam gtsam/.
	@docker build --tag=cogrob/omnimapper:opencv opencv/.
	@docker build --tag=cogrob/omnimapper:apriltags apriltags/.
	@docker build --tag=cogrob/omnimapper:base base/.
	@docker build --tag=cogrob/omnimapper:ebt ebt/.
	@docker build --tag=cogrob/omnimapper:svo svo/.
	# @( cd nvidia ; bash build.sh)
	# @docker build --tag=cogrob/omnimapper:nvidia nvidia/.

# pull:
# 	@docker pull cogrob/omnimapper:dep
# 	@docker pull cogrob/omnimapper:dev
# 	@docker pull cogrob/omnimapper:gui
# 	@docker pull cogrob/omnimapper:gtsam
# 	@docker pull cogrob/omnimapper:base
# 	@docker pull cogrob/omnimapper:apriltags
	# @docker pull cogrob/omnimapper:nvidia

# clean:
# 	@docker rmi -f cogrob/omnimapper:dep
# 	@docker rmi -f cogrob/omnimapper:dev
# 	@docker rmi -f cogrob/omnimapper:gui
# 	@docker rmi -f cogrob/omnimapper:gtsam
# 	@docker rmi -f cogrob/omnimapper:base
# 	@docker rmi -f cogrob/omnimapper:apriltags
	# @docker rmi -f cogrob/omnimapper:nvidia
