let g:ale_use_global_executables = 1
" let g:ale_python_pylint_options = ""
let g:ale_python_flake8_options = "--ignore E501"
let g:ale_python_black_options = "--line-length 120"
let g:ale_python_autopep8_options = "--ignore E501"

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
  \ 'python':['black', 'autopep8'],
  \ 'python3':['black', 'autopep8'],
  \ 'terraform':['terraform'],
  \ 'lua':['luafmt'],
  \ 'sh':['shfmt'],
  \ 'yaml':['yamlfix'],
  \}

let g:ale_fix_on_save = 1

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
