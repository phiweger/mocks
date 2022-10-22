// include { add_one } from './processes/utils.nf'


process add_one {
    input:
        val(answer)

    output:
        env(MORE)

    script:
    """
    MORE=\$(increase.py --by 1 --value ${answer})
    """
}


workflow bar {
    take:
        value

    main:
        value | add_one

    emit:
        add_one.out
}