powershell_script 'Set_MaxMemoryPerShellMB' do
  code 'Set-Item -Path WSMan:\\localhost\\Shell\\MaxMemoryPerShellMB -Value 2048'
  action :run
end
