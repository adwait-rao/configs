-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tundra",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.mason = {
  pkgs = {
    "typescript-language-server", "tailwindcss-language-server", "eslint-lsp", "prettierd", "nomicfoundation-solidity-language-server"
  },
}

-- M.mason.pkgs = {
-- }

return M
