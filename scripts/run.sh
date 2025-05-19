
rm -rf results
mkdir results

# Copy all the bitstream to the results directory
find BScThesis.runs/impl_1 -name \*.bit -exec cp {} results/ \;

find BScThesis.gen/sources_1/bd/ -name \*.hwh -exec cp {} results/ \;

# Rename the hwh files to include wrapper in the name
for file in results/*.hwh; do
    mv "$file" "${file%.hwh}_wrapper.hwh"
done






