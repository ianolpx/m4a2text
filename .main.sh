#!/bin/bash

# 배포 스크립트: PyPI 패키지 빌드 & 업로드

echo "🔄 Cleaning previous builds..."
rm -rf dist build m4a2text.egg-info

echo "📦 Building package..."
python setup.py sdist bdist_wheel

echo "🚀 Uploading to PyPI..."
twine upload dist/*

echo "✅ Deployment complete!"
