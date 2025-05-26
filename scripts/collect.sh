mkdir results -p

rm results/*.hwh
rm results/*.bit

ALGORITHMS="sdes des tdes desx desxl desl"
OPERATIONS="encrypt decrypt"

for algorithm in $ALGORITHMS; do
    for operation in $OPERATIONS; do
        echo "Processing $algorithm $operation"
        cp BScThesis.runs/impl_${algorithm}_${operation}/${algorithm}_${operation}_bd_wrapper.bit results/${algorithm}_${operation}.bit
        cp BScThesis.gen/sources_1/bd/${algorithm}_${operation}_bd/hw_handoff/${algorithm}_${operation}_bd.hwh results/${algorithm}_${operation}.hwh
    done
done






