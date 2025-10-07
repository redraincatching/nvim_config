vim.o.shell = "powershell.exe"
vim.o.shellcmdflag =
"-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
vim.o.shellredir = '2>&1 | %% { "$_" } | Out-File %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | %% { "$_" } | tee %s; exit $LastExitCode'
vim.opt.shellquote = ''
vim.opt.shellxquote = ''
