# reddit-convert-json
Converts the t1 and t3 JSON files you get from the Reddit API into a markdown file with YAML metadata.

# What this does

Use the `convert.sh` file or the Windows equivalent (coming soon) to convert raw JSON files from the Reddit API into YAML metadata that can be used by static site generators like [Hakyll](https://jaspervdj.be/hakyll/) and [Jekyll](https://jekyllrb.com/).

# Prerequisites

1. You need a bunch of JSON files that [look like this](https://github.com/beerendlauwers/reddit-convert-json/blob/master/input/data-comment.json). 
If you don't know what JSON means, it's just a text file with some data in it.
**TODO**: link to a tool that can generate these.

2. A tool that will do the conversion. I used `haskell-mustache`.
  - I have a statically linked version compiled on Ubuntu 16.04 (64-bit) here: [download link](https://github.com/beerendlauwers/reddit-convert-json/raw/master/executables/haskell-mustache)

# Usage

## Linux (and Mac too, probably)

### You know git

* `git clone` this repository.
* `chmod` the `convert.sh` file: `chmod u+x convert.sh`
* Continue with the rest of the tutorial.

### You don't know git

* Copy and paste [the contents of the convert.sh file](https://raw.githubusercontent.com/beerendlauwers/reddit-convert-json/master/convert.sh) into a new file in a directory of your choosing.
* Assuming you named the file `convert.sh`, open a command line and type `chmod u+x convert.sh`. 
* Create two new directories in the same location as `convert.sh` named `input` and `output`.
* Continue with the steps below.

### Rest of the tutorial

* Copy the actual tool that will do the conversion in the same directory as `convert.sh`, naming it `haskell-mustache`. [Link to Ubuntu version of tool](https://github.com/beerendlauwers/reddit-convert-json/raw/master/executables/haskell-mustache)
* Copy the JSON files into the `input` folder.
* Execute `convert.sh` on the command line.
* The YAML files are now in the `output` folder.
