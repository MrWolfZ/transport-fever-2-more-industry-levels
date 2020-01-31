function data()
  return {
    en = {
      Name = 'More Industry Levels',
      Description = 'Doubles the number of levels for each industry (including those added by mods).\n'
                 .. '\n'
                 .. 'This mod can be safely added to an existing savegame (any industries at their production limit will immediately start '
                 .. 'leveling up). However, it cannot be easily removed once an industry has gone beyond its vanilla limit (the game will '
                 .. 'crash when such an industry tries to change its level). If you want to remove this mod, then please activate the '
                 .. 'sandbox mod first, configure all industries that are beyond their vanilla limit to be at their limit, and finally save '
                 .. 'the game again before removing the mod.\n'
                 .. '\n'
                 .. 'For advanced users it is possible to adjust the factor for multiplying production levels by changing the factors '
                 .. 'variable in the mod.lua file (if you don\'t know where to find this file, you should probably not touch it). However, '
                 .. 'note that this file will likely get overriden should an update to this mod be published.\n'
                 .. '\n'
                 .. 'The source code for this mod can be found [url=https://github.com/MrWolfZ/transport-fever-2-more-industry-levels]here[/url].',
    },
    de = {
      Name = 'Mehr Produktionsstufen für Industrien',
      Description = 'Verdoppelt die Anzahl von Produktionsstufen für Industrien (auch solche, welche von Mods hinzugefügt werden).\n'
                 .. '\n'
                 .. 'Diese Mod kann problemlos zu einem existierenden Spiel hinzugefügt werden (Industrien, welche an ihrem Limit sind, werden '
                 .. 'sofort anfangen ihre Stufe zu erhöhen). Diese Mod kann jedoch nicht ohne Weiteres aus einem Spiel entfernt werden (das Spiel '
                 .. 'stürzt ab, wenn eine Industrie über ihrem Limit versucht ihre Stufe zu ändern). Solltest du diese Mod entfernen wollen, '
                 .. 'aktiviere bitte zuerst die Sandbox Mod, setze damit alle Industrien über ihrem normalen Limit auf ihr Limit und speichere '
                 .. 'das Spiel neu bevor du die Mod entfernst.\n'
                 .. '\n'
                 .. 'Für erfahrende Leute ist es möglich den Faktor für die Anzahl der Produktionsstufen in der mod.lua Datei zu verändern (falls '
                 .. 'du nicht weisst wo diese Datei zu finden ist, solltest du sie am besten nicht anfassen). Bitte beachte auch, dass diese Datei '
                 .. 'vermutlich überschrieben wird wenn ein Update für diese Mod veröffentlicht wird.\n'
                 .. '\n'
                 .. 'Der Quellcode dieser Mod kann [url=https://github.com/MrWolfZ/transport-fever-2-more-industry-levels]hier[/url] gefunden werden.',
    },
  }
end
