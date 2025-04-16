require('telescope.builtin').find_files {
  cwd = os.getenv 'HOME' .. '/.local/bin',
}
