nextflow.enable.dsl = 2


include { bar } from './modules/bar/main.nf'


process foo {
    
    output:
        env(ANSWER)
   
    """
    ANSWER=42
    """
}


workflow {

    foo | bar | view

}