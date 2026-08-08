-- Glyph pages this translation adds.  Delete the entry if the vanilla
-- alphabet already covers your language.
--
-- base is the first glyph code the page owns.  0x100 and up is free space
-- above the vanilla $60/$80 pages, so this adds an alphabet rather than
-- replacing one.  Set `advance` if your glyphs are not 8px wide.
return {
  -- Tried mod.content.font:register("ttf", {}) (gen1recomp's bundled Plain
  -- Pixel) in 1.0.8 to get real accents.  Reverted in 1.0.9: the battle
  -- screen positions HP/name/move text at fixed pixel offsets that assume
  -- the vanilla 8px monospace tile font, and the TTF's variable-width
  -- glyphs made all of it overlap into unreadable garbage. Dialogue boxes
  -- were fine; battle was not, so this is off again until there's a way to
  -- get accents without breaking battle.
}
