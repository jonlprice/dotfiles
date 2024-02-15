PS1='\w\$ '


# Setting PATH for Python 3.11
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
PATH=$PATH:/opt/homebrew/bin
export PATH

complete -C /opt/homebrew/bin/terraform terraform

# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
PATH=${PATH}:/Users/jonprice/projects/java/apache-maven-3.9.6/bin
export PATH

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
