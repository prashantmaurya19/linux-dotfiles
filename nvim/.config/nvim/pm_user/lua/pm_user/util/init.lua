function table.slice(tbl, first, last, step)
  local sliced = {}
  for i = first or 1, last or #tbl, step or 1 do
    sliced[#sliced+1] = tbl[i]
  end
  return sliced
end



function table.update(oldTable, newValues)
	for key, value in pairs(newValues) do
		oldTable[key] = value
	end
	return oldTable
end


