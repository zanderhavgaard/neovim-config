let g:ale_use_global_executables = 1
" let g:ale_python_pylint_options = ""
let g:ale_python_flake8_options = "--ignore E501"
let g:ale_python_black_options = "--line-length 120"
let g:ale_python_autopep8_options = "--ignore E501"
let g:ale_yaml_yamllint_options = "-d \"{extends: default, rules: {comments: disable, line-length: disable}}\""

let g:ale_linters = {
  \ 'python':['pylint', 'flake8'],
  \ 'python3':['pylint', 'flake8'],
  \ 'java':['javac'],
  \ 'scala':['scalac', 'sbtserver'],
  \ 'yaml':['yamllint'],
  \ 'sh':['shellcheck'],
  \ 'dockerfile':['hadolint'],
  \ 'terraform':['tflint'],
  \ 'cpp':['gcc'],
  \ 'lua':['luac','luacheck'],
  \ }

let g:ale_fixers = {
  \ '*':['remove_trailing_lines', 'trim_whitespace'],
  \ 'python':['black'],
  \ 'python3':['black'],
  \ 'terraform':['terraform'],
  \ 'lua':['stylua'],
  \ 'sh':['shfmt'],
  \ 'yaml':['prettier'],
  \ 'markdown':['prettier'],
  \ 'json': ['jq', 'prettier'],
  \ 'javascript': ['prettier'],
  \ 'html': ['prettier'],
  \ 'css': ['prettier'],
  \ 'go': ['gofmt'],
  \ 'rust': ['rustfmt'],
  \}

let g:ale_fix_on_save = 1

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
