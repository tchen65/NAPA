napa=$1
config=$2

mkdir -p log
logfile = log/analyze.$config.oe

echo "Logging in:" 
echo $logfile

python $napa/run_napa.py \
    -r analyze \
    -c $config >& $logfile &
