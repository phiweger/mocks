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