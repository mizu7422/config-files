require("frost_folder") 

require("mason").setup()

vim.cmd[[autocmd FileType trouble setlocal wrap]]

vim.g.UltiSnipsSnippetDirectories = {'~/.config/nvim/UltiSnips'}

vim.g.python3_host_prog = '/usr/bin/python3'


require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.pdb$",
      "%.d$",
      "%.pdf$",
      "%.png$",
      "%.jpg$",
      "%.gif$",
      "%.zip$",
      "%.tar.gz$",
      "%.o$",
      "%.exe$",
      "%.bin$",
      "%.lock$",
      "%.TAG$",
      "^[^.]+$",  -- Ignore files without an extension
      "target/",  -- Exclude the target directory (Rust build artifacts)
      -- Exclude Rust files other than main.rs
      "Cargo.toml$",
      "%.mp3$",
      "%.mp4$",
      "%.mov$",
      "%.rar$",
      "%.jpg$",
    }
  }
}
