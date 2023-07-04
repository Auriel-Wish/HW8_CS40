clear
umasm urt0.ums calc40.ums printd.ums callmain.ums > calc40.um
for n in {1..3}; do
        echo "$n"
        if [[ $# -eq 0 ]] ; then
                # random-calc40 > random_commands
                # um calc40.um < random_commands > outputLocal
                # /comp/40/bin/calc40 < random_commands > outputReference
                time calc40-test calc40.um 1000000
        else
                um calc40.um < $1 > outputLocal
                /comp/40/bin/calc40 < $1 > outputReference

                diff outputLocal outputReference > diffOutput
                if [ -s "diffOutput" ] ; then
                        echo -e "\nDiff Test FAILED\n"
                        break
                else
                        echo -e "\nDiff Test SUCCEEDED\n"
                fi
        fi
done