<p align="center">
  <a href="http://codely.tv">
    <img src="http://codely.tv/wp-content/uploads/2016/05/cropped-logo-codelyTV.png" width="192px" height="192px"/>
  </a>
</p>

<h1 align="center">
  💻 Bash GitHub Actions Skeleton
</h1>

<p align="center">
    <a href="https://github.com/CodelyTV"><img src="https://img.shields.io/badge/CodelyTV-OS-green.svg?style=flat-square" alt="codely.tv"/></a>
    <a href="http://pro.codely.tv"><img src="https://img.shields.io/badge/CodelyTV-PRO-black.svg?style=flat-square" alt="CodelyTV Courses"/></a>
    <a href="https://github.com/marketplace/actions/check-critical-files"><img src="https://img.shields.io/github/v/release/CodelyTV/check-critical-files?style=flat-square" alt="GitHub Action version"></a>
</p>

<p align="center">
    Speedup your GitHub Actions creation!
</p>

## 🚀 Usage

Create a file named `checker.yml` inside the `.github/workflows` directory and paste:

```yml
name: Bash GH Skeleton

on: [pull_request]

jobs:
  bash-gh-skeleton:
    runs-on: ubuntu-latest
    name: Whatever this action does
    steps:
      - uses: codelytv/buash-github_action-skeleton@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          some_argument: Some value
```

## ⚖️ License

[MIT](LICENSE)
