":help new-filetype-scripts
if did_filetype()	" filetype already set..
  finish		" ..don't do these checks
endif
if getline(1) =~? 'python'
  setfiletype python
elseif getline(1) =~? 'bash'
  setfiletype sh
elseif getline(1) =~? '---'
  setfiletype yaml
endif

