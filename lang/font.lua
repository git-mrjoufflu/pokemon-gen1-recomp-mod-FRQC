-- Glyph pages this translation adds.  Delete the entry if the vanilla
-- alphabet already covers your language.
--
-- base is the first glyph code the page owns.  0x100 and up is free space
-- above the vanilla $60/$80 pages, so this adds an alphabet rather than
-- replacing one.  Set `advance` if your glyphs are not 8px wide.
return {
  -- French needs way more glyphs (accented upper+lowercase, ligatures) than
  -- hand-drawn page tiles are worth authoring one at a time.  gen1recomp
  -- bundles Plain Pixel (CC-BY 4.0, Douglas Vautour) for exactly this: an
  -- empty table opts into it at its native size, full accent coverage,
  -- while box borders and multi-char sequences (<PK>, 'd ligatures) keep
  -- their vanilla tiles regardless.  This is what finally lets accented
  -- text (é, è, à, ç, î, ô, û...) render instead of the ASCII-folded
  -- fallback the rest of this mod has used until now.
  ttf = {},
}
