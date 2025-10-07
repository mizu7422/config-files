local function ColorMyPencils(color)
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "none" })
end

return {

    -- Other plugin configurations

    {
        "kristijanhusak/vim-hybrid-material",
        config = function()
            vim.g.transparent_background = 1
            vim.o.background = "light"

            ColorMyPencils("hybrid_reverse")
        end
    },

    -- Continue with other configurations
}
