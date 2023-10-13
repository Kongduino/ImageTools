#tag Menu
Begin Menu MainMenuBar
   Begin DesktopMenuItem FileMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "&File"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin DesktopQuitMenuItem FileQuit
         SpecialMenu = 0
         Index = -2147483648
         Text = "#App.kFileQuit"
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin DesktopMenuItem EditMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "&Edit"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin DesktopMenuItem EditUndo
         SpecialMenu = 0
         Index = -2147483648
         Text = "&Undo"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditSeparator1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditCut
         SpecialMenu = 0
         Index = -2147483648
         Text = "Cu&t"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditCopy
         SpecialMenu = 0
         Index = -2147483648
         Text = "&Copy"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditPaste
         SpecialMenu = 0
         Index = -2147483648
         Text = "&Paste"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditClear
         SpecialMenu = 0
         Index = -2147483648
         Text = "#App.kEditClear"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditSeparator2
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem EditSelectAll
         SpecialMenu = 0
         Index = -2147483648
         Text = "Select &All"
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin DesktopMenuItem HelpMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "&Help"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
   End
   Begin DesktopMenuItem ToolsMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "Tools"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin DesktopMenuItem ToolsInvert
         SpecialMenu = 0
         Index = -2147483648
         Text = "Invert"
         ShortcutKey = "I"
         Shortcut = "Cmd+I"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsReset
         SpecialMenu = 0
         Index = -2147483648
         Text = "Reset"
         ShortcutKey = "R"
         Shortcut = "Cmd+Option+R"
         MenuModifier = True
         MacOptionKey = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsGreyscale
         SpecialMenu = 0
         Index = -2147483648
         Text = "Greyscale"
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem Tools4Greys
         SpecialMenu = 0
         Index = -2147483648
         Text = "4 Greys"
         ShortcutKey = "4"
         Shortcut = "Cmd+4"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem ToolsRotateLeft
         SpecialMenu = 0
         Index = -2147483648
         Text = "Rotate Left"
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsRotateRight
         SpecialMenu = 0
         Index = -2147483648
         Text = "Rotate Right"
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsRotate180
         SpecialMenu = 0
         Index = -2147483648
         Text = "Rotate 180°"
         ShortcutKey = "8"
         Shortcut = "Cmd+8"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopMenuItem ToolsHorizontalMirror
         SpecialMenu = 0
         Index = -2147483648
         Text = "Horizontal Mirror"
         ShortcutKey = "H"
         Shortcut = "Cmd+Control+H"
         MenuModifier = True
         MacControlKey = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsVerticalMirror
         SpecialMenu = 0
         Index = -2147483648
         Text = "Vertical Mirror"
         ShortcutKey = "V"
         Shortcut = "Cmd+Control+V"
         MenuModifier = True
         MacControlKey = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsScaledownbyhalf
         SpecialMenu = 0
         Index = -2147483648
         Text = "Scale down by half"
         ShortcutKey = "D"
         Shortcut = "Cmd+D"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin DesktopMenuItem ToolsAddText
         SpecialMenu = 0
         Index = -2147483648
         Text = "Add Text"
         ShortcutKey = "T"
         Shortcut = "Cmd+T"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
   End
End
#tag EndMenu
