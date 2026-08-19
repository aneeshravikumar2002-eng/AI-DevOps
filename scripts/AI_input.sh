#!/bin/bash

set -e

OUTPUT_FILE="ai_deployment_input.txt"

echo "AI Deployment Risk Input Report" > $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "======================================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Changed Files:" >> $OUTPUT_FILE
echo "-------------" >> $OUTPUT_FILE
git diff --name-only HEAD~1 HEAD >> $OUTPUT_FILE || echo "Unable to get changed files" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Important File Contents:" >> $OUTPUT_FILE
echo "------------------------" >> $OUTPUT_FILE

for file in Dockerfile requirements.txt app.py deployment.yaml service.yaml
do
    if [ -f "$file" ]; then
        echo "" >> $OUTPUT_FILE
        echo "===== $file =====" >> $OUTPUT_FILE
        cat "$file" >> $OUTPUT_FILE
        echo "" >> $OUTPUT_FILE
    else
        echo "$file not found" >> $OUTPUT_FILE
    fi
done

echo "" >> $OUTPUT_FILE
echo "AI Analysis Instructions:" >> $OUTPUT_FILE
echo "------------------------" >> $OUTPUT_FILE
echo "Analyze these DevOps changes and provide:" >> $OUTPUT_FILE
echo "1. Risk level: Low, Medium, or High" >> $OUTPUT_FILE
echo "2. Impacted components" >> $OUTPUT_FILE
echo "3. Possible deployment failures" >> $OUTPUT_FILE
echo "4. Recommended tests" >> $OUTPUT_FILE
echo "5. Rollback preparation steps" >> $OUTPUT_FILE
echo "6. Final Go or No-Go recommendation" >> $OUTPUT_FILE

echo "AI input file generated: $OUTPUT_FILE"
