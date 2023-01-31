# nf-test-secret

Workflow to test nextflow secrets. 

## Usage
Environment must contain nextflow secret named, `TEST_SECRET`. If testing locally, this secret can be defined using `nextflow secrets set TEST_SECRET "This is my test secret"` (see nextflow [docs](https://www.nextflow.io/docs/latest/secrets.html) for more information on nextflow secrets).

## Outputs
File named `secret.txt` in the output dir (default is `./results`), but parameter can be set with `--outdir`.