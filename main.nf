#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

// Example of using a secret in a process

process ECHO_SECRET {
    // Obtain the secret from the environment
    // Environment will require secret of same name
    secret 'TEST_SECRET'

    publishDir params.outdir, mode: 'copy'

    output: 
    path 'secret.txt'

    """
    echo \$TEST_SECRET > secret.txt
    """
}

/*
 * Define the workflow
 */
workflow {
    ECHO_SECRET ()
}