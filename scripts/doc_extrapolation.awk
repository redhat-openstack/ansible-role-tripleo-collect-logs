/^### --start_docs/ {
    for (;;) {
        if ((getline line) <= 0)
            unexpected_eof()
        if (line ~ /^### --stop_docs/)
            break
        if (match(line, ".* #nodocs$"))
            continue
        if (substr(line, 0, 5) == "## ::") {
            line = "\n::\n"
        } if (substr(line, 0, 3) == "## ") {
            line = substr(line, 4)
        } else if (line != "") {
            line = "    "line
        }
        print line > "/dev/stdout"
    }
}

function unexpected_eof() {
    printf("%s:%d: unexpected EOF or error\n", FILENAME, FNR) > "/dev/stderr"
    exit 1
}

END {
    if (curfile)
        close(curfile)
}
