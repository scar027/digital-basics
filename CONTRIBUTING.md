# Contributing Guidelines
## Coding Style

This repository follows the [Verilog Coding Standard](https://fpgacpu.ca/fpga/verilog.html) for code and the [UC Davis EEC 180 Recommended File Organization](https://www.ece.ucdavis.edu/~bbaas/180/tutorials/file.organization.html) for the directory structure.

## Developer Certificate of Origin (DCO)

When sending code, please either send signed-off patches or a pull request with signed-off commits. If you don't sign off on them, it won't be accepted. This means adding a line that says "Signed-off-by: Name \<Email\>" at the end of each commit, indicating that you wrote the code and have the right to pass it on as an open source patch. You can simply use the `--signoff` flag while writing the commit message for this purpose.

## Commit Messages

Also, please write good Git commit messages. A good commit message looks like this:

    Header line explaining the commit in one line
    
    Body of commit message is a few lines of text, explaining things
    in more detail, possibly giving some background about the issue
    being fixed, etc etc.
    
    The body of the commit message can be several paragraphs, and
    please do proper word-wrap and keep columns shorter than about
    74 characters or so. That way "git log" will show things
    nicely even when it's indented.
    
    Reported-by: whoever-reported-it
    Signed-off-by: Your Name <you@example.com>

That header line really should be meaningful, and really should be just one line. The header line is what is shown by tools like gitk and shortlog, and should summarize the change in one readable line of text, independently of the longer explanation.

The preferred way to write a commit message is using imperative mood, e.g. "Make foo do xyz" instead of "This patch makes foo do xyz" or "I made foo do xyz", as if you are giving commands or requests to the code base.
