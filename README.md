# Terraform provider build container

## Usage

Replace `REPO_URL` in `run.sh` with a HTTP link to a terraform provider repository and replace the second WORKDIR line in `Dockerfile`.
The resulting provider binary will be placed in `$OUTPUT_DIR` which defaults to `./output/`. 
Careful, this directory will be cleared before building.


