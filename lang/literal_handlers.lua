-- Generated qid-driven literal dialogue handlers.
return function(mod)
  local TextBox = mod.ui.TextBox
  local ChoiceBox = mod.ui.ChoiceBox
  mod.content.map_scripts:register("VIRIDIAN_CITY", {talk = {
    ["TEXT_VIRIDIANCITY_YOUNGSTER2"] = function(game, ow, npc, done)
      game.stack:push(TextBox.new(game, "Tu veux en savoir\nplus sur les 2\11sortes de chenilles\11POKeMON?", function()
        game.stack:push(ChoiceBox.new(game, function(yes)
          game.stack:push(TextBox.new(game, yes and "CATERPIE a pas\nde poison, mais\11WEEDLE en a.\12Fais attention a\nson POISON STING!" or "Ah, correct\11d'abord!", done))
        end))
      end))
    end,
  },
  })
  mod.content.map_scripts:register("MUSEUM_1F", {talk = {
    ["TEXT_MUSEUM1F_SCIENTIST1"] = function(game, ow, npc, done)
      if game.save.flags["EVENT_BOUGHT_MUSEUM_TICKET"] then
        game.stack:push(TextBox.new(game, "Prends ben ton\ntemps pour\11regarder!", done))
      else
        game.stack:push(TextBox.new(game, "Ca coute ¥50 pour\nun\11billet d'enfant.\12Tu veux\nrentrer?", function()
          game.stack:push(ChoiceBox.new(game, function(yes)
            if yes then
              if (game.save.money or 0) >= 50 then
                game.save.money = (game.save.money or 0) + (-50)
                game.save.flags["EVENT_BOUGHT_MUSEUM_TICKET"] = true
                game.stack:push(TextBox.new(game, "Correct, ¥50!\nMerci ben!", done))
              else
                game.stack:push(TextBox.new(game, "T'as pas\nassez d'argent.", done))
              end
            else
              game.stack:push(TextBox.new(game, "Reviens nous voir!", done))
            end
          end))
        end))
      end
    end,
  },
    onStep = function(game, ow, x, y)
      if ((x == 9 and y == 4) or (x == 10 and y == 4)) and not game.save.flags["EVENT_BOUGHT_MUSEUM_TICKET"] then
        local function on_done() end
        game.stack:push(TextBox.new(game, "Ca coute ¥50 pour\nun\11billet d'enfant.\12Tu veux\nrentrer?", function()
          game.stack:push(ChoiceBox.new(game, function(yes)
            if yes then
              if (game.save.money or 0) >= 50 then
                game.save.money = (game.save.money or 0) + (-50)
                game.save.flags["EVENT_BOUGHT_MUSEUM_TICKET"] = true
                game.stack:push(TextBox.new(game, "Correct, ¥50!\nMerci ben!", on_done))
              else
                game.stack:push(TextBox.new(game, "T'as pas\nassez d'argent.", function()
                  ow:scriptMove(ow.player, "down", 1, on_done)
                end))
              end
            else
              game.stack:push(TextBox.new(game, "Reviens nous voir!", function()
                ow:scriptMove(ow.player, "down", 1, on_done)
              end))
            end
          end))
        end))
        return true
      end
      return false
    end,
  })
  mod.content.map_scripts:register("BIKE_SHOP", {talk = {
    ["TEXT_BIKESHOP_CLERK"] = function(game, ow, npc, done)
      if (game.save.inventory["BICYCLE"] or 0) > 0 then
        game.stack:push(TextBox.new(game, "Pis, tu l'aimes-tu\nton nouveau\11BECYK?\12Tu peux l'amener\nsur CYCLING ROAD\11pis dans les\11grottes!", done))
      else
        if (game.save.inventory["BIKE_VOUCHER"] or 0) > 0 then
          game.stack:push(TextBox.new(game, "Ah, c'est...\12UN BON BECYK!\12Correct! Tiens!", function()
            game.save.inventory["BIKE_VOUCHER"] = nil
            game.save.inventory["BICYCLE"] = 1
            game.save.flags["EVENT_GOT_BICYCLE"] = true
            game.stack:push(TextBox.new(game, "{PLAYER} a echange\nle BON BECYK\11contre un\11BECYK.", done))
          end))
        else
          game.stack:push(TextBox.new(game, "Salut! Bienvenue a\nnotre MAGASIN DE\11BECYK.\12On a exactement\nle BECYK qu'y te\11faut!", done))
        end
      end
    end,
  },
  })
  mod.content.map_scripts:register("BIKE_SHOP", {talk = {
    ["TEXT_BIKESHOP_MIDDLE_AGED_WOMAN"] = function(game, ow, npc, done)
      game.stack:push(TextBox.new(game, "Un BECYK de ville\nordinaire c'est\11ben assez pour\11moi!\12Tu peux pas mettre\nun panier\11d'epicerie sur\11un bike de\11montagne!", done))
    end,
  },
  })
  mod.content.map_scripts:register("BIKE_SHOP", {talk = {
    ["TEXT_BIKESHOP_YOUNGSTER"] = function(game, ow, npc, done)
      if (game.save.flags["EVENT_GOT_BICYCLE"] or (game.save.inventory["BICYCLE"] or 0) > 0) then
        game.stack:push(TextBox.new(game, "Wow. Ton BECYK\nest ben capote!", done))
      else
        game.stack:push(TextBox.new(game, "Ces BECYKS-la sont\ncapotes, mais\11c'est ben cher\11en mautadine!", done))
      end
    end,
  },
  })
end
