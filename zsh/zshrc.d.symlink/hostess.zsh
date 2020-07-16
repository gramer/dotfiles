function hf() {
  instance=`hostess ls | fzf`
  if [ ! -z "$instance" ]
  then
    instance=`echo $instance | cut -d ' ' -f 1`
    ssh deploy@$instance
  fi
}