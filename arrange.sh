#!/bin/bash

# files 디렉토리 안의 모든 파일에 대해 반복
for file in files/*; do
    # 파일 이름만 추출 (경로 제거)
    filename=$(basename "$file")

    first_char=$(echo "${filename:0:1}")

    # 해당 알파벳 폴더가 있는지 확인 (a~z)
    if [[ -d "$first_char" ]]; then
      mv "$file" "$first_char/"
    fi
done
