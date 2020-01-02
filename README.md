# bash-script-library
Bash Script Library or BSL is a collection of useful Bash scripts and helper functions. 

I tried to write all scripts and files in a very clear and readable manner. You're encouraged to read the scripts as there are plenty of comments and other helpful information in the scripts themselves. 

## Output
BSL contains a number of helpful output related scripts and variables in the file *bsl-output.sh*. You can view a quick demo of bls-output by running the following commands: 

    source bsl-output.sh
	bsl-output-demo
	
### Color output
If you need to output color in your Bash scripts you can use the variables defined in *bsl-output.sh*. Here is small sample of the capabilities included:

	$ source bsl-output.sh
    echo -e "Include some ${RED}red text${NC} in your output or add some ${UNDERLINE}emphasis${NC} to your script output."
	echo -e "You an even include ${BLUE_UNDERLINE}emphasis and color${NC} in one go"

You're encouraged to read the *bsl-output.sh* source and see all possiblities yourself.
